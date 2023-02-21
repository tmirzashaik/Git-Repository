/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class InsClaim {
    global String accountId;
    global Map<String,Object> additionalInfo;
    global Map<String,Object> attributeSelectedValues;
    global static String CLAIM_ITEM_CATEGORY_DAMAGED_PROPERTY;
    global static String CLAIM_ITEM_CATEGORY_INVOLVED_INJURY;
    global List<vlocity_ins.InsClaim.InsParticipant> claimParticipants;
    global String claimReasonType;
    global String claimType;
    global List<vlocity_ins.InsClaim.InsCoverage> coverages;
    global String currencyIsoCode;
    global String currencySymbol;
    global String description;
    global String id;
    global Datetime initiationDate;
    global List<vlocity_ins.InsClaim.InsInvolved> involvedItems;
    global String lossCause;
    global Datetime lossDate;
    global String lossType;
    global String name;
    global vlocity_ins.InsPolicy policy;
    global String policyId;
    global String policyNumber;
    global String policyNumberId;
    global String productCode;
    global String productId;
    global static String RESERVE_MODE_COVERAGE_RESERVE;
    global static String RESERVE_MODE_RESERVE_WORKSHEET;
    global String status;
    global String statusImage;
    global InsClaim() {

    }
    global InsClaim(String id) {

    }
    global InsClaim(Datetime lossDate, Datetime initiationDate, String policyId, String accountId, String insuredAssetId, String productId, Map<String,Object> attributeSelectedValues) {

    }
    global void addClaimParticipant(vlocity_ins.InsClaim.InsParticipant participant) {

    }
    global void addCoverage(vlocity_ins.InsClaim.InsCoverage coverage) {

    }
    global void addInvolved(vlocity_ins.InsClaim.InsInvolved involved) {

    }
    global void setClaimParticipants(List<vlocity_ins.InsClaim.InsParticipant> participantList) {

    }
    global void setCoverages(List<vlocity_ins.InsClaim.InsCoverage> coverageList) {

    }
    global void setInvolvedItems(List<vlocity_ins.InsClaim.InsInvolved> involvedList) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
global class InsCoverage {
    global Map<String,Object> additionalInfo;
    global vlocity_ins.InsClaim claim;
    global String claimId;
    global String claimItemId;
    global String claimParticipantId;
    global String claimParticipantName;
    global String coverageCalculationFormula;
    global Datetime createdDate;
    global String currencyIsoCode;
    global String currencySymbol;
    global String description;
    global Decimal expenseReserveAmount;
    global String id;
    global String insurancePolicyAssetId;
    global String insurancePolicyCoverageId;
    global String insurancePolicyCoverageName;
    global String insurancePolicyParticipantId;
    global vlocity_ins.InsPolicy.InsInsuredItem insuredItem;
    global String insuredName;
    global vlocity_ins.InsClaim.InsInvolved involvedItem;
    global String involvedName;
    global List<vlocity_ins.InsClaim.InsLineItem> lineItems;
    global Decimal lossReserveAmount;
    global String name;
    global vlocity_ins.InsClaim.InsParticipant participant;
    global vlocity_ins.InsPolicy.InsCoverage policyCoverage;
    global String reserveProcessingMode;
    global String status;
    global InsCoverage() {

    }
    global void addLineItems(vlocity_ins.InsClaim.InsLineItem lineItem) {

    }
    global void setLineItems(List<vlocity_ins.InsClaim.InsLineItem> lineItemList) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsInvolved {
    global Map<String,Object> additionalInfo;
    global Map<String,Object> attributeSelectedValues;
    global String claimId;
    global String claimParticipantId;
    global String currencyIsoCode;
    global String currencySymbol;
    global System.Address currentAddress;
    global String description;
    global String id;
    global String insurancePolicyAssetId;
    global String insurancePolicyCoverageId;
    global String name;
    global String productCode;
    global String productId;
    global Boolean toDelete;
    global String type;
    global InsInvolved() {

    }
    global InsInvolved(String name, String description, String type, System.Address currentAddress, String currencyIsoCode, String currencySymbol, String claimId, String claimParticipantId, String insurancePolicyAssetId, String insurancePolicyCoverageId, String productId, String productCode, Map<String,Object> attributeSelectedValues) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsLineItem {
    global Map<String,Object> additionalInfo;
    global Decimal adjustedAmount;
    global String benefitType;
    global List<vlocity_ins.InsClaim.InsLineItemAdjustment> childLineItems;
    global Decimal claimAmount;
    global vlocity_ins.InsClaim.InsCoverage claimCoverage;
    global String claimCoverageId;
    global String claimId;
    global Datetime createdDate;
    global String currencyIsoCode;
    global String currencySymbol;
    global String description;
    global Decimal expenseAmount;
    global Boolean hasPaidLineItem;
    global String id;
    global String name;
    global Date paymentDate;
    global String paymentId;
    global String recipientId;
    global String recipientName;
    global vlocity_ins.InsClaim.InsTransaction reserveAdjustment;
    global List<vlocity_ins.InsClaim.InsTransaction> reserveAdjustments;
    global Decimal reserveAmount;
    global String reserveId;
    global String status;
    global String type;
    global Integer unitCount;
    global String uom;
    global InsLineItem() {

    }
    global InsLineItem(String id) {

    }
    global InsLineItem(String claimCoverageId, String type) {

    }
    global InsLineItem(vlocity_ins.InsClaim.InsCoverage claimCoverage, Decimal requestedReserveAmount, Decimal requestedAdjustedAmount, String callingClassType) {

    }
    global InsLineItem(String type, String claimId, String claimCoverageId, Decimal claimOrExpenseAmount, Decimal reserveAmount) {

    }
    global InsLineItem(vlocity_ins.InsClaim.InsCoverage claimCoverage, Decimal requestedReserveAmount, Decimal requestedAdjustedAmount, String benefitType, String callingClassType) {

    }
    global void addChildLineItems(vlocity_ins.InsClaim.InsLineItemAdjustment childLineItem) {

    }
    global String getClaimId() {
        return null;
    }
    global String getCoverageProductId() {
        return null;
    }
    global String getInsuredItemCustomerPropertyId() {
        return null;
    }
    global String getInsuredItemId() {
        return null;
    }
    global String getInsuredItemProductId() {
        return null;
    }
    global String getInsuredPartyId() {
        return null;
    }
    global String getInsuredPartyRelationshipId() {
        return null;
    }
    global String getInvolvedItemId() {
        return null;
    }
    global String getInvolvedPartyId() {
        return null;
    }
    global String getPolicyCoverageId() {
        return null;
    }
    global String getPolicyId() {
        return null;
    }
    global String getProductId() {
        return null;
    }
    global void setChildLineItems(List<vlocity_ins.InsClaim.InsLineItemAdjustment> childLineItemList) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsLineItemAdjustment {
    global Decimal adjustedAmount;
    global String adjustmentReason;
    global String currencyIsoCode;
    global String currencySymbol;
    global String id;
    global String name;
    global String parentLineItemId;
    global InsLineItemAdjustment() {

    }
    global InsLineItemAdjustment(String claimItemId, String adjustedReason, Decimal adjustedAmount) {

    }
}
global class InsParticipant {
    global Map<String,Object> additionalInfo;
    global String claimId;
    global String currencyIsoCode;
    global String id;
    global String insurancePolicyParticipantId;
    global vlocity_ins.InsPolicy.InsInsuredParty insuredParty;
    global List<vlocity_ins.InsClaim.InsInvolved> involvedItems;
    global Boolean isInjured;
    global String name;
    global String participantAccountId;
    global String participantContactId;
    global vlocity_ins.InsPolicy.InsInsuredParty policyParticipant;
    global Set<String> roles;
    global Boolean toDelete;
    global InsParticipant() {

    }
    global InsParticipant(String claimId, String participantAccountId, String participantContactId, String insurancePolicyParticipantId) {

    }
    global String getPartyId() {
        return null;
    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsPayment {
    global Decimal amount;
    global Datetime cancellationDate;
    global String claimId;
    global String currencyIsoCode;
    global String id;
    global String identifier;
    global String name;
    global Date paymentDate;
    global String status;
    global InsPayment() {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsTransaction implements System.Comparable {
    global String adjustmentReason;
    global Decimal amount;
    global String claimCoverageId;
    global vlocity_ins.InsClaim.InsCoverage coverage;
    global Datetime createdDate;
    global String currencyIsoCode;
    global String currencySymbol;
    global String id;
    global String name;
    global String reserveDetailId;
    global InsTransaction() {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
    global Map<String,Object> toMap() {
        return null;
    }
}
}
