/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global abstract class InsObjectModel {
    global static String NAMESPACE;
    global InsObjectModel() {

    }
    global InsObjectModel(String fieldSet) {

    }
    global virtual Set<String> getAdditionalFieldNames(Schema.SObjectType objectType) {
        return null;
    }
    global List<SObject> getChildObjects(Id rootObjectId) {
        return null;
    }
    global abstract List<SObject> getChildObjects(Id param0, vlocity_ins.InsObjectModel.TypeFilter param1);
    global virtual Set<String> getFieldNames(Schema.SObjectType objectType) {
        return null;
    }
    global String getFieldSet() {
        return null;
    }
    global List<SObject> getGrandchildObjects(Id childObjectId) {
        return null;
    }
    global abstract List<SObject> getGrandchildObjects(Id param0, vlocity_ins.InsObjectModel.TypeFilter param1);
    global virtual SObject getHeader(Id objectId) {
        return null;
    }
    global List<SObject> getRelatedObjects(Id objectId) {
        return null;
    }
    global abstract List<SObject> getRelatedObjects(Id param0, vlocity_ins.InsObjectModel.TypeFilter param1);
    global abstract List<SObject> getRootObjects(Id param0);
    global virtual void preFetchAllObjects(Id objectId, Map<String,Object> options) {

    }
    global void setFieldSet(String fieldSet) {

    }
global class NoFieldSetException extends Exception {
}
global enum TypeFilter {ADJUSTMENTS, ALL_ADJUSTMENTS, ALL_INSURED_ITEMS, ALL_RELATIONSHIPS, COVERAGE, INSURED_ITEM, INSURED_PARTY, RELATIONSHIPS}
}
