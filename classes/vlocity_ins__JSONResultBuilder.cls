/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class JSONResultBuilder {
    global static String ATTRIBUTES_FIELD_NAME;
    global static String COVERAGE_PRODUCT_TYPE;
    global static String FSC_ATTRIBUTES_FIELD_NAME;
    global static String INSURED_ITEM_PRODUCT_TYPE;
    global static String INSURED_PARTY_PRODUCT_TYPE;
    global static String NAMESPACE;
    global static String PCI_OUTPUT_NAME;
    global static String PRODUCT_CODE_OUTPUT_NAME;
    global static String PRODUCT_ID_OUTPUT_NAME;
    global static String PRODUCT_NAME_OUTPUT_NAME;
    global static String WRAPPER_TYPE_COVERAGE;
    global static String WRAPPER_TYPE_INSURED_ITEM;
    global static String WRAPPER_TYPE_PRODUCT;
    global static String WRAPPER_TYPE_RATING_FACT;
    global JSONResultBuilder() {

    }
    global virtual vlocity_ins.JSONResult buildChildResult(List<SObject> childObjects, Map<Schema.SObjectType,Set<String>> fieldNames) {
        return null;
    }
    global virtual Map<String,Object> getCustomNamedJSONRecordFields(SObject obj, Set<String> fieldNames, vlocity_ins.InsProductWrapper wrapper) {
        return null;
    }
    global virtual Map<String,Object> getCustomNamedJSONRecordFields(SObject obj, vlocity_ins.InsProductWrapper.InsCoverageWrapper wrapper) {
        return null;
    }
    global virtual Map<String,Object> getCustomNamedJSONRecordFields(SObject obj, vlocity_ins.InsProductWrapper.InsInsuredItemWrapper wrapper) {
        return null;
    }
    global abstract Id getParentProductId(SObject param0);
    global abstract Id getProductId(SObject param0);
    global abstract String getWrapperType(SObject param0);
    global virtual void populateAdditionalInfo(List<SObject> objects) {

    }
}
