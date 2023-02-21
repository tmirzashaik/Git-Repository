/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class InsPolicy {
    global String accountId;
    global Map<String,Object> additionalInfo;
    global Map<String,Object> attributeCategories;
    global Map<String,Object> attributeSelectedValues;
    global Datetime cancellationDate;
    global List<vlocity_ins.InsPolicy> childPolicies;
    global String contractGroupPlanId;
    global String contractId;
    global String contractLineId;
    global List<vlocity_ins.InsPolicy.InsCoverage> coverages;
    global Datetime createdDate;
    global String currencyCode;
    global String currencySymbol;
    global Datetime dateRenewed;
    global Datetime effectiveDate;
    global Datetime endDate;
    global Datetime finalRenewalDate;
    global String financialAccountId;
    global String Id;
    global Map<String,Object> insPolicySnapshotMap;
    global List<vlocity_ins.InsPolicy.InsInsuredItem> insuredItems;
    global Map<String,vlocity_ins.InsPolicy.InsInsuredItem> insuredItemsMap;
    global List<vlocity_ins.InsPolicy.InsInsuredParty> insuredParties;
    global Map<String,vlocity_ins.InsPolicy.InsInsuredParty> insuredPartiesMap;
    global Boolean isRenewed;
    global String latestVersionId;
    global Decimal monthlyPremium;
    global String name;
    global Datetime originalEffectiveDate;
    global Datetime originalEndDate;
    global String originalVersionId;
    global String parentClassCode;
    global String parentClassId;
    global List<vlocity_ins.InsPolicy.InsPayment> paymentSchedule;
    global String policyName;
    global String policyNumber;
    global Date policyPaidToDate;
    global String premiumCalculationMethod;
    global String premiumFrequency;
    global String premiumPaymentType;
    global String previousVersionId;
    global List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustments;
    global String primaryMemberContactId;
    global String producerId;
    global String productCode;
    global String productId;
    global String productionCodeId;
    global String productionCodeName;
    global String productName;
    global String referencePolicyNumber;
    global Datetime renewalDate;
    global String renewedFromPolicy;
    global List<vlocity_ins.InsPolicy.InsRevenue> revenueSchedule;
    global String sourceQuoteId;
    global String sourceQuoteType;
    global Decimal standardPremium;
    global String status;
    global List<vlocity_ins.InsPolicy.InsSurcharge> surcharges;
    global String term;
    global List<vlocity_ins.InsPolicy.InsTerm> terms;
    global Decimal totalAmount;
    global Decimal totalAmountForTerm;
    global Decimal totalFeeAmount;
    global Decimal totalFeeForTerm;
    global Decimal totalFeeForVersions;
    global Decimal totalPremiumForTerm;
    global Decimal totalPremiumForVersions;
    global Decimal totalSumInsured;
    global Decimal totalTaxAmount;
    global Decimal totalTaxFeeAmount;
    global Decimal totalTaxForTerm;
    global Decimal totalTaxForVersions;
    global List<vlocity_ins.InsPolicy.InsTransaction> transactions;
    global String universalPolicyNumber;
    global InsPolicy() {

    }
    global InsPolicy(Datetime policyStart, Datetime policyEnd, String account, String recordId, String policyTerm, String policyName, String prodId, Map<String,Object> attrValues, Map<String,Object> otherInfo) {

    }
    global void addChildPolicy(vlocity_ins.InsPolicy childPolicy) {

    }
    global void addCoverage(vlocity_ins.InsPolicy.InsCoverage coverage) {

    }
    global void addCoverages(List<vlocity_ins.InsPolicy.InsCoverage> rootCoveragesList) {

    }
    global void addInsuredItem(vlocity_ins.InsPolicy.InsInsuredItem insuredItem) {

    }
    global void addInsuredItems(List<vlocity_ins.InsPolicy.InsInsuredItem> insuredItemsList) {

    }
    global void addInsuredParties(List<vlocity_ins.InsPolicy.InsInsuredParty> insuredPartyList) {

    }
    global void addInsuredParty(vlocity_ins.InsPolicy.InsInsuredParty insuredParty) {

    }
    global void addPricingAdjustment(vlocity_ins.InsPolicy.InsPricingAdjustment pricingAdjustment) {

    }
    global void addPricingAdjustments(List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustmentList) {

    }
    global void addSurcharge(vlocity_ins.InsPolicy.InsSurcharge surcharge) {

    }
    global void addTransaction(vlocity_ins.InsPolicy.InsTransaction insTransaction) {

    }
    global List<vlocity_ins.InsPolicy.InsPayment> getActivePaymentSchedule() {
        return null;
    }
    global List<vlocity_ins.InsPolicy> getChildPolicies() {
        return null;
    }
    global vlocity_ins.InsPolicy.InsInsuredItem getInsuredItemById(String id) {
        return null;
    }
    global vlocity_ins.InsPolicy.InsInsuredItem getInsuredItemByInstanceKey(String instanceKey) {
        return null;
    }
    global vlocity_ins.InsPolicy.InsInsuredParty getInsuredPartyById(String id) {
        return null;
    }
    global vlocity_ins.InsPolicy.InsInsuredParty getInsuredPartyByInstanceKey(String instanceKey) {
        return null;
    }
    global vlocity_ins.InsPolicy.InsTransaction getTransactionById(String transactionId) {
        return null;
    }
    global List<vlocity_ins.InsPolicy.InsTransaction> getTransactionsByType(String id, String type) {
        return null;
    }
    global void setCoverages(List<vlocity_ins.InsPolicy.InsCoverage> rootCoverages) {

    }
    global void setInsuredItems(List<vlocity_ins.InsPolicy.InsInsuredItem> insuredItemList) {

    }
    global void setInsuredParties(List<vlocity_ins.InsPolicy.InsInsuredParty> insuredPartyList) {

    }
    global void setPremiums(Decimal standard, Decimal monthly, Decimal total) {

    }
    global void setSurcharges(List<vlocity_ins.InsPolicy.InsSurcharge> surchargesList) {

    }
    global void setVersionIds(String originalId, String previousId) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
global class InsCoverage {
    global Map<String,Object> additionalInfo;
    global Map<String,Object> attributeSelectedValues;
    global String currencyCode;
    global String currencySymbol;
    global Datetime effectiveDate;
    global Datetime endDate;
    global Decimal feeAmount;
    global String Id;
    global String insPolicyId;
    global vlocity_ins.InsPolicy.InsInsuredItem insuredItem;
    global String insuredItemId;
    global vlocity_ins.InsPolicy.InsInsuredParty insuredParty;
    global String insuredPartyId;
    global String name;
    global vlocity_ins.InsPolicy policy;
    global Decimal premium;
    global List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustments;
    global String productChildItemId;
    global String productName;
    global String productReserveMode;
    global String productSpecCode;
    global String productSpecDescription;
    global String productSpecId;
    global Decimal proratedFeeAmount;
    global Decimal proratedPremium;
    global Decimal proratedTaxAmount;
    global Decimal taxAmount;
    global Decimal totalAmount;
    global Decimal totalProratedAmount;
    global Decimal totalTaxFeeAmount;
    global InsCoverage() {

    }
    global InsCoverage(String recordId, String coverageName, Decimal price, String prodId, Map<String,Object> attrValues, Map<String,Object> otherInfo) {

    }
    global void addPricingAdjustment(vlocity_ins.InsPolicy.InsPricingAdjustment pricingAdjustment) {

    }
    global void addPricingAdjustments(List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustmentList) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsInsuredItem {
    global Map<String,Object> additionalInfo;
    global String assetName;
    global Map<String,Object> attributeSelectedValues;
    global List<vlocity_ins.InsPolicy.InsInsuredItem> childInsuredItems;
    global List<vlocity_ins.InsPolicy.InsInsuredParty> childInsuredParties;
    global List<vlocity_ins.InsPolicy.InsCoverage> coverages;
    global String currencyCode;
    global String currencySymbol;
    global String customerPropertyId;
    global Decimal feeAmount;
    global String Id;
    global String insPolicyId;
    global String instanceKey;
    global List<vlocity_ins.InsPolicy.InsInsuredRel> insuredRels;
    global Datetime lastModifiedDate;
    global String name;
    global String parentProductId;
    global Decimal premium;
    global List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustments;
    global vlocity_ins.InsPolicy.InsInsuredParty primaryInsuredParty;
    global String productChildItemId;
    global String productSpecCode;
    global String productSpecDescription;
    global String productSpecId;
    global Decimal proratedFeeAmount;
    global Decimal proratedPremium;
    global Decimal proratedTaxAmount;
    global Decimal taxAmount;
    global Decimal totalAmount;
    global Decimal totalProratedAmount;
    global Decimal totalSumInsured;
    global Decimal totalTaxFeeAmount;
    global InsInsuredItem() {

    }
    global InsInsuredItem(String recordId, String insuredName, String insuredInstanceKey, Decimal price, String prodId, Map<String,Object> attrValues, Map<String,Object> otherInfo) {

    }
    global void addChildInsuredItem(vlocity_ins.InsPolicy.InsInsuredItem insuredItem) {

    }
    global void addChildInsuredItems(List<vlocity_ins.InsPolicy.InsInsuredItem> childItemsList) {

    }
    global void addCoverage(vlocity_ins.InsPolicy.InsCoverage insuredCoverage) {

    }
    global void addCoverages(List<vlocity_ins.InsPolicy.InsCoverage> insuredCoveragesList) {

    }
    global void addInsuredRel(vlocity_ins.InsPolicy.InsInsuredRel insuredRel) {

    }
    global void addInsuredRels(List<vlocity_ins.InsPolicy.InsInsuredRel> insuredRelList) {

    }
    global void addPricingAdjustment(vlocity_ins.InsPolicy.InsPricingAdjustment pricingAdjustment) {

    }
    global void addPricingAdjustments(List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustmentList) {

    }
    global void setChildItems(List<vlocity_ins.InsPolicy.InsInsuredItem> childItems) {

    }
    global void setCoverages(List<vlocity_ins.InsPolicy.InsCoverage> insuredCoverages) {

    }
    global void setInsuredRels(List<vlocity_ins.InsPolicy.InsInsuredRel> insuredRelList) {

    }
    global void setLastModifiedDate(Datetime modDate) {

    }
    global void setPrimaryParty(vlocity_ins.InsPolicy.InsInsuredParty primary) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsInsuredParty {
    global Map<String,Object> additionalInfo;
    global Map<String,Object> attributeSelectedValues;
    global List<vlocity_ins.InsPolicy.InsInsuredItem> childInsuredItems;
    global String contactId;
    global List<vlocity_ins.InsPolicy.InsCoverage> coverages;
    global String currencyCode;
    global String currencySymbol;
    global Decimal feeAmount;
    global String firstName;
    global String Id;
    global String insPolicyId;
    global String instanceKey;
    global List<vlocity_ins.InsPolicy.InsInsuredRel> insuredRels;
    global Boolean isPrimary;
    global Datetime lastModifiedDate;
    global String lastName;
    global String name;
    global String parentProductId;
    global String participantName;
    global String partyId;
    global Decimal premium;
    global List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustments;
    global String primaryParticipantAccountId;
    global String primaryParticipantContactId;
    global String productChildItemId;
    global String productSpecCode;
    global String productSpecDescription;
    global String productSpecId;
    global Decimal proratedFeeAmount;
    global Decimal proratedPremium;
    global Decimal proratedTaxAmount;
    global String relatedParticipantAccountId;
    global String relatedParticipantContactId;
    global String relationshipType;
    global String role;
    global Decimal taxAmount;
    global Decimal totalAmount;
    global Decimal totalProratedAmount;
    global Decimal totalSumInsured;
    global Decimal totalTaxFeeAmount;
    global InsInsuredParty() {

    }
    global InsInsuredParty(String recordId, String insuredName, String insuredInstanceKey, Decimal price, String personId, String prodId, Map<String,Object> attrValues, Map<String,Object> otherInfo) {

    }
    global void addCoverage(vlocity_ins.InsPolicy.InsCoverage insuredCoverage) {

    }
    global void addCoverages(List<vlocity_ins.InsPolicy.InsCoverage> insuredCoverageList) {

    }
    global void addInsuredRel(vlocity_ins.InsPolicy.InsInsuredRel insuredRel) {

    }
    global void addInsuredRels(List<vlocity_ins.InsPolicy.InsInsuredRel> insuredRelList) {

    }
    global void addPricingAdjustment(vlocity_ins.InsPolicy.InsPricingAdjustment pricingAdjustment) {

    }
    global void addPricingAdjustments(List<vlocity_ins.InsPolicy.InsPricingAdjustment> pricingAdjustmentList) {

    }
    global String getPartyId() {
        return null;
    }
    global void setCoverages(List<vlocity_ins.InsPolicy.InsCoverage> insuredCoverages) {

    }
    global void setInsuredRels(List<vlocity_ins.InsPolicy.InsInsuredRel> insuredRelList) {

    }
    global void setLastModifiedDate(Datetime modDate) {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsInsuredRel {
    global Map<String,Object> additionalInfo;
    global Map<String,Object> attributeSelectedValues;
    global Map<String,Object> childAttributeSelectedValues;
    global String childId;
    global String childInstanceKey;
    global String childProductCode;
    global String childProductSpecId;
    global String Id;
    global String parentId;
    global String parentInstanceKey;
    global InsInsuredRel() {

    }
    global InsInsuredRel(String parInsance, String childInstance, Map<String,Object> attrValues) {

    }
    global InsInsuredRel(String parentInstanceKey, String childInstanceKey, String childProductCode, Map<String,Object> attributeSelectedValues, Map<String,Object> childAttributeSelectedValues) {

    }
    global InsInsuredRel(String parInstance, String parKey, String childInstance, String childKey, Map<String,Object> attrValues, Map<String,Object> otherInfo) {

    }
    global InsInsuredRel(String parInstance, String parKey, String childInstance, String childKey, Map<String,Object> attrValues, Map<String,Object> otherInfo, String recordId) {

    }
    global InsInsuredRel(String parentInstanceKey, String childInstanceKey, String childProductCode, Map<String,Object> attributeSelectedValues, Map<String,Object> childAttributeSelectedValues, Id parentId, Id childId, Id recordId) {

    }
    global void setChildAttributeSelectedValues(Map<String,Object> attrValues) {

    }
    global void setChildId(String cId) {

    }
    global void setChildProductCode(String prodCode) {

    }
    global void setParentId(String pId) {

    }
}
global class InsPayment implements System.Comparable {
    global Decimal feeAmount;
    global String Id;
    global vlocity_ins.InsPolicy.InsTransaction insTransaction;
    global String insurancePolicyId;
    global Boolean isPaid;
    global List<vlocity_ins.InsPolicy.InsPaymentDetail> paymentScheduleDetails;
    global Decimal premiumAmount;
    global Date scheduleDate;
    global Decimal taxAmount;
    global Boolean toDelete;
    global Decimal totalAmount;
    global InsPayment() {

    }
    global InsPayment(Date scheduleDate, Decimal premiumAmount, Decimal taxAmount, Decimal feeAmount) {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
}
global class InsPaymentDetail {
    global String entryName;
    global Decimal feeAmount;
    global String Id;
    global String insAssetId;
    global String insCoverageId;
    global String insParticipantId;
    global String insPayScheduleEntryId;
    global String insPolicyId;
    global Decimal premiumAmount;
    global Decimal taxAmount;
    global Boolean toDelete;
    global InsPaymentDetail() {

    }
    global InsPaymentDetail(Decimal premiumAmount, Decimal taxAmount, Decimal feeAmount) {

    }
}
global class InsPricingAdjustment {
    global Map<String,Object> additionalInfo;
    global String adjustmentType;
    global Decimal amount;
    global String applicableItemType;
    global String Id;
    global Boolean isRefundable;
    global String priceListEntryId;
    global String priceListEntryName;
    global String transactionId;
    global InsPricingAdjustment() {

    }
}
global class InsRevenue implements System.Comparable {
    global Decimal amount;
    global String Id;
    global vlocity_ins.InsPolicy.InsTransaction insTransaction;
    global String insurancePolicyId;
    global Date revenueDate;
    global Boolean toDelete;
    global Decimal totalEarnedRevenue;
    global Decimal totalUnearnedRevenue;
    global InsRevenue() {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
}
global class InsSurcharge {
    global Decimal proRatedFeeAmount;
    global Decimal proRatedTaxAmount;
    global InsSurcharge() {

    }
    global InsSurcharge(Decimal taxAmount, Decimal feeAmount) {

    }
}
global class InsTerm {
    global String applicableItem;
    global String attributeClass;
    global String attributeCode;
    global String attributeId;
    global String attributeName;
    global String attributeScope;
    global String attributeSubType;
    global vlocity_ins.InsPolicy.InsCoverage coverage;
    global String coverageId;
    global String currencyIsoCode;
    global String durationType;
    global String effectiveYear;
    global String id;
    global Decimal initialAmount;
    global Decimal initialValue;
    global vlocity_ins.InsPolicy insPolicy;
    global String insPolicyId;
    global String insurancePolicyCoverageId;
    global vlocity_ins.InsPolicy.InsInsuredItem insuredItem;
    global String insuredItemId;
    global vlocity_ins.InsPolicy.InsInsuredParty insuredParty;
    global String insuredPartyId;
    global Boolean isActive;
    global Boolean isClaimLineItemClaimedAmountAction;
    global Boolean isPaymentAttemptedAction;
    global Boolean isReserveAdjustmentAttemptedAction;
    global String name;
    global vlocity_ins.InsPolicy originalInsPolicy;
    global String originalInsPolicyId;
    global String referencePolicyNumber;
    global String termDurationType;
    global String termDurationUnitOfMeasure;
    global Integer termDurationValue;
    global List<vlocity_ins.InsPolicy.InsTermTrackingEntry> trackingEntries;
    global InsTerm() {

    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsTermTrackingEntry implements System.Comparable {
    global Decimal calculatedInitialAmount;
    global Decimal calculatedInitialValue;
    global vlocity_ins.InsClaim claim;
    global vlocity_ins.InsClaim.InsCoverage claimCoverage;
    global String claimCoverageId;
    global vlocity_ins.InsClaim.InsPayment claimCoveragePaymentDetail;
    global String claimCoveragePaymentDetailId;
    global String claimId;
    global vlocity_ins.InsClaim.InsInvolved claimItem;
    global String claimItemId;
    global Datetime createdDate;
    global String currencyCode;
    global String id;
    global Decimal initialAmount;
    global Decimal initialValue;
    global vlocity_ins.InsPolicy.InsTerm insPolicyTerm;
    global String insPolicyTermId;
    global vlocity_ins.InsPolicy.InsInsuredItem insuredItem;
    global String insuredItemId;
    global vlocity_ins.InsPolicy.InsInsuredParty insuredParty;
    global String insuredPartyId;
    global vlocity_ins.InsClaim.InsLineItem lineItem;
    global String lineItemId;
    global String name;
    global Decimal postedAmount;
    global Decimal postedValue;
    global Decimal remainingAmount;
    global Decimal remainingValue;
    global Decimal sequence;
    global Decimal totalUsedAmount;
    global Decimal totalUsedValue;
    global Date usageDate;
    global InsTermTrackingEntry() {

    }
    global InsTermTrackingEntry(vlocity_ins.InsClaim.InsLineItem lineItem) {

    }
    global Integer compareTo(Object compareTo) {
        return null;
    }
    global Map<String,Object> toMap() {
        return null;
    }
}
global class InsTransaction {
    global Map<String,Object> additionalInfo;
    global Decimal amount;
    global Decimal feeAmount;
    global String Id;
    global String insurancePolicyId;
    global String insurancePolicyVersionId;
    global Boolean isLatestForPolicyVersionReversal;
    global String name;
    global String parentTransactionId;
    global Datetime postDate;
    global Decimal taxAmount;
    global Decimal totalAmount;
    global Datetime transactionDate;
    global String transactionNumber;
    global String type;
    global InsTransaction() {

    }
}
}
