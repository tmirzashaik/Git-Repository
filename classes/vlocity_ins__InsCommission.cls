/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class InsCommission {
    global Decimal commissionableAmount {
        get;
        set;
    }
    global Decimal commissionAmount {
        get;
        set;
    }
    global vlocity_ins.InsCommission.InsCommissionSchedule commissionSchedule {
        get;
        set;
    }
    global Decimal currentTotalCommissionAmount {
        get;
        set;
    }
    global Id id {
        get;
        set;
    }
    global Id insurancePolicyId {
        get;
        set;
    }
    global Id insurancePolicyTransactionId {
        get;
        set;
    }
    global Decimal maxCommissionAmount {
        get;
        set;
    }
    global Decimal minCommissionAmount {
        get;
        set;
    }
    global String name {
        get;
        set;
    }
    global Id objectId {
        get;
        set;
    }
    global Id parentCommissionId {
        get;
        set;
    }
    global Id processingProducerId {
        get;
        set;
    }
    global Id producerId {
        get;
        set;
    }
    global String producerProductionCode {
        get;
        set;
    }
    global String status {
        get;
        set;
    }
    global String type {
        get;
        set;
    }
    global InsCommission() {

    }
global class InsCommissionSchedule {
    global List<String> applicableObjects;
    global String calculationProcessName {
        get;
        set;
    }
    global String calculationType {
        get;
        set;
    }
    global Decimal commissionAmount {
        get;
        set;
    }
    global Decimal commissionRate {
        get;
        set;
    }
    global String commissionStructureType {
        get;
        set;
    }
    global Date effectiveEnd {
        get;
        set;
    }
    global Date effectiveStart {
        get;
        set;
    }
    global Id id {
        get;
        set;
    }
    global Boolean isActive {
        get;
        set;
    }
    global Map<String,Object> processInputMapping {
        get;
        set;
    }
    global Map<String,Object> processOutput {
        get;
        set;
    }
    global Map<String,Object> processOutputConvNotation {
        get;
        set;
    }
    global Map<String,Object> tierDefinition {
        get;
        set;
    }
    global InsCommissionSchedule() {

    }
    global void addApplicableObjects(String applicableObj) {

    }
}
global class InsCommissionScheduleAssignment {
    global List<String> commissionableEvents;
    global vlocity_ins.InsCommission.InsCommissionSchedule commissionSchedule {
        get;
        set;
    }
    global Date effectiveEnd {
        get;
        set;
    }
    global Date effectiveStart {
        get;
        set;
    }
    global Id id {
        get;
        set;
    }
    global Decimal maxCommissionAmount {
        get;
        set;
    }
    global Decimal minCommissionAmount {
        get;
        set;
    }
    global InsCommissionScheduleAssignment() {

    }
    global void addCommissionableEvent(String commEvent) {

    }
}
}
