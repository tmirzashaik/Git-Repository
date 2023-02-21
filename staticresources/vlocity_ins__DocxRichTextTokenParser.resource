function parseRichTextTokens(zip, result) {

    var imageCount = result.imageData.numImages;
    var contentTypesXML = zip.files['[Content_Types].xml'].asText();
    var documentRelsXML = zip.files['word/_rels/document.xml.rels'].asText();
    if(result.imageData.imageRels !== '' && result.imageData.imageRels !== undefined) {
        if(contentTypesXML.indexOf('image/png') === -1) { //if image/png is not defined, define it
            contentTypesXML = contentTypesXML.replace('</Types>','<Default Extension="png" ContentType="image/png"/></Types>');
            zip.file('[Content_Types].xml',contentTypesXML);
        }
        documentRelsXML = documentRelsXML.replace('</Relationships>',result.imageData.imageRels + '</Relationships>');
        zip.file('word/_rels/document.xml.rels',documentRelsXML);
    }
    for (var i = 0; i < imageCount; i++) {
        if (typeof result.imageData['imageData' + i] !== 'undefined' && result.imageData['imageData' + i] !== null) {
            zip.file('word/media/imageData' + i + '.png', result.imageData['imageData' + i], {base64: true});
        }
    }
    if(result.numbering !== '') {
        zip.file('word/numbering.xml', result.numbering);
        if(contentTypesXML.indexOf('numbering.xml') === -1) { //if numbering.xml is not defined, define it
            contentTypesXML = contentTypesXML.replace('</Types>','<Override PartName="/word/numbering.xml" ContentType="application/vnd.openxmlformats-officedocument.wordprocessingml.numbering+xml"/></Types>');
            zip.file('[Content_Types].xml',contentTypesXML);
        }
        if(documentRelsXML.indexOf('numbering.xml') === -1 ) { //if numbering.xml is not defined, define it
            documentRelsXML = documentRelsXML.replace('</Relationships>','<Relationship Id="rId01" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/numbering" Target="numbering.xml"/></Relationships>');
            zip.file('word/_rels/document.xml.rels',documentRelsXML);
        }

    }
    if(result.hyperlinks !== undefined && result.hyperlinks !== ''){
        console.log('Hyperlink relationship : ' + result.hyperlinks);
        documentRelsXML = documentRelsXML.replace('</Relationships>',result.hyperlinks + '</Relationships>');
        zip.file('word/_rels/document.xml.rels',documentRelsXML);
    }
    return zip;
}

// Helper method to add spans into sectionContent before it is saved to the db:
function insertWrappers(richTextValue) {
    if (richTextValue) {
        richTextValue = insertViawrappers(richTextValue);
        //Check richTextValue to see if the wrapper div exists with document styling:
        /*if (richTextValue.indexOf('section-content-wrapper') < 0) {
            richTextValue = '<div class="section-content-wrapper" style="font-size: 10pt;">' + richTextValue + '</div>';
        }*/
    }
    return  richTextValue;
};
    
//Help method to add viawrapper
function insertViawrappers(content) {
    var trimmedContent, htmlTagRegex, i, contentArray, charCode;
    if (content) {
        trimmedContent = content.replace(/(<div)/igm, '<p').replace(/<\/div>/igm, '</p>');
        //Replace all occurrences of &nbsp; with ' ' except when immediately preceded by <p> and immediately followed by </p>
        trimmedContent = content.replace(/<p>\s<\/p>/g, '<p>&nbsp;</p>')
        trimmedContent = trimmedContent.replaceAll(/<br>/gi, '<br/>');
        htmlTagRegex = /(<[^>]*>)/;
        contentArray = trimmedContent.split(htmlTagRegex);

        //wrap viawrapper around all text in content
        trimmedContent = '';
        for (i = 0; i < contentArray.length; i++) {
            charCode = contentArray[i].charCodeAt(0);
            if (contentArray[i] !== '' && contentArray[i].charAt(0) !== '<' &&
                contentArray[i].slice(-1) !== '>' && charCode !== 10) {
                contentArray[i] = '<viawrapper>' + contentArray[i] + '</viawrapper>';
            }
            if (i > 0) {
                trimmedContent = trimmedContent + contentArray[i];
            }
        }
    }
    //console.log('after wrapping with viawrapper: ' + trimmedContent );
    return trimmedContent;
};

function readUploadedFileDataAsDataUrl(zip,docName) {
    return new Promise(function(resolve, reject) {
        var outputFileName = docName + '.docx';
        var outputFileConfig = {
            'type': 'blob',
            'mimeType': 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
            'compression': 'DEFLATE',
            'compressionOptions': {
                'level': 9
            }
        };
        var doc = new Docxtemplater();
        doc.loadZip(zip);
        var modifiedFileblob= doc.getZip().generate(outputFileConfig);

        var dataReader = new FileReader();
        dataReader.addEventListener('load', function() {
            var outputContentBase64 = dataReader.result;
            var base64Mark = 'base64,';
            var dataStart = outputContentBase64.indexOf(base64Mark) + base64Mark.length;
            outputContentBase64 = outputContentBase64.substring(dataStart);

            resolve({'fileName': outputFileName, 'fileContent': outputContentBase64});
        });
        dataReader.readAsDataURL(modifiedFileblob);
    }); 
}