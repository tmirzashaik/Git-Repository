{
    "type": "VlocityStepCreator",
    "fileName": "VlocityStepCreator_INSUpgrade",
    "plan": {
        "Name": "INS Upgrade",
        "UniqueId": "INS Upgrade"
    },
    "steps": [
        {
            "ExternalId": "INSAddPickListValues",
            "UniqueId": "INSAddPickListValues",
            "Name": "Add Picklist Values",
            "Priority": "None",
            "Tags": "",
            "IsActive": true,
            "Type": "Group",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-family: sans-serif;\">These upgrade steps are adding new picklist values to existing objects/fields</span></p>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddPickListValueForClaimLineItemStatus",
            "UniqueId": "INSAddPickListValueForClaimLineItemStatus",
            "Name": "Add Picklist Value to the Claim Line Item Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "New",
                        "Pending Authority",
                        "Open",
                        "Authority Denied",
                        "Payment Pending",
                        "Paid",
                        "Closed W/O Pay",
                        "Cancelled",
                        "Stopped",
                        "Voided"
                    ],
                    "FieldName": "Status__c",
                    "ObjectName": "ClaimLineItem__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSManagePickListValuesForAttributeClass",
            "UniqueId": "INSManagePickListValuesForAttributeClass",
            "Name": "Manage Picklist Values in Attribute Class Field of Vlocity Attribute Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.setupPicklistFieldValues"
                },
                "ToolingAPI": {
                    "newFieldValues": [
                        {"value" : "ScopeCountLimit", "label" : "Limit - Scope Count"},
                        {"value" : "UnitCountLimit", "label" : "Limit - Claim Line Item Unit Count"},
                        {"value" : "Copay", "label" : "Copay"},
                        {"value" : "Coinsurance", "label" : "Coinsurance"},
                        {"value" : "OutOfPocketMax", "label": "Out Of Pocket Max"}
                    ],
                    "updatedFieldValues": [
                        {"value" : "Limit", "label" : "Limit - Currency"}
                    ],
                    "FieldName": "AttributeClass__c",
                    "ObjectName": "Attribute__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSManagePickListValuesForAttributeDurationType",
            "UniqueId": "INSManagePickListValuesForAttributeDurationType",
            "Name": "Manage Picklist Values in Duration Type Field of Vlocity Attribute Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "Attribute__c",
                    "FieldName": "DurationType__c",
                    "newFieldValues": [
                        {
                            "label": "Lifetime",
                            "value": "Lifetime"    
                        },
                        {
                            "label": "Rolling 12 Month",
                            "value": "Rolling12Month"
                        }
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.setupPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSManagePicklistValuesInClaimLineItemStatus",
            "UniqueId": "INSManagePicklistValuesInClaimLineItemStatus",
            "Name": "Manage Picklist Values in Status Field of Claim Line Item Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.setupPicklistFieldValues"
                },
                "ToolingAPI": {
                    "updatedFieldValues": [
                        {"value" : "New", "default" : true},
                        {"value" : "Reopened", "isActive" : false},
                        {"value" : "Pending Approval", "isActive" : false},
                        {"value" : "Approved", "isActive" : false},
                        {"value" : "Pending Payment", "isActive" : false},
                        {"value" : "Payment Approved", "isActive" : false}
                    ],
                    "FieldName": "Status__c",
                    "ObjectName": "ClaimLineItem__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForBillingFrequency",
            "UniqueId": "INSAddPickListValueForBillingFrequency",
            "Name": "Add Picklist Value to the Billing Frequency Field in the Billing Account Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Semi-Monthly"
                    ],
                    "FieldName": "BillingFrequency__c",
                    "ObjectName": "BillingAccount__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForAssetTransactionType",
            "UniqueId": "INSAddPickListValueForAssetTransactionType",
            "Name": "Add Picklist Value to the Type Field in the Asset Transaction Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Initiate Grace Period"
                    ],
                    "FieldName": "Type__c",
                    "ObjectName": "AssetTransaction__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForNonHeldProductType",
            "UniqueId": "INSAddPickListValueForNonHeldProductType",
            "Name": "Add Picklist Value to the Type Field in the Non-Held Product Object",
            "Priority": "None",
            "Tags": "Health",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Claims-made",
                        "Occurrence",
                        "Modified Occurrence",
                        "Claims-paid"
                    ],
                    "FieldName": "Type__c",
                    "ObjectName": "NonHeldProduct__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForAssetBillingFrequency",
            "UniqueId": "INSAddPickListValueForAssetBillingFrequency",
            "Name": "Add Picklist Value to the Billing Frequency Field in the Asset Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Semi-Monthly"
                    ],
                    "FieldName": "BillingFrequency__c",
                    "ObjectName": "Asset"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForAssetStatus",
            "UniqueId": "INSAddPickListValueForAssetStatus",
            "Name": "Add Picklist Value to the Status Field in the Asset Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-size: 12px; font-family: sans-serif;\">You need to add the following picklist values to the Status Picklist on the Asset object:</span></p><ul><li><span style=\"font-size: 12px; font-family: sans-serif;\">Active</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Pending Lapse</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Lapsed</span></li></ul><p><span style=\"font-size: 12px; font-family: sans-serif;\">Here's how:</span></p><ol><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click Check result to open the Object Manager in a new tab.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">In the Values section, click New.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Enter&nbsp;</span><b style=\"font-size: 12px; font-family: sans-serif;\">Active</b><span style=\"font-size: 12px; font-family: sans-serif;\">, </span><b style=\"font-size: 12px; font-family: sans-serif;\">Pending Lapse</b><span style=\"font-size: 12px; font-family: sans-serif;\">&nbsp;and&nbsp;</span><b style=\"font-size: 12px; font-family: sans-serif;\">Lapsed</b><span style=\"font-size: 12px; font-family: sans-serif;\"> into the big text field.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Don't select any of the record types below the text field.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click Save.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {},
                "ToolingAPI": {
                    "fieldValues": [
                        "Active",
                        "Pending Lapse",
                        "Lapsed"
                    ],
                    "FieldName": "Status",
                    "ObjectName": "Asset"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/Asset/FieldsAndRelationships/Status/view",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddPickListValueForAssetTerm",
            "UniqueId": "INSAddPickListValueForAssetTerm",
            "Name": "Add Picklist Value to the Term Field in the Asset Object",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "Asset",
                    "FieldName": "Term__c",
                    "fieldValues": [
                        "Daily",
                        "Monthly",
                        "Semi-Annual",
                        "Custom"
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForTrailingDocumentPlaceholderStatus",
            "UniqueId": "INSAddPickListValueForTrailingDocumentPlaceholderStatus",
            "Name": "Add Picklist Value to the Status Field in the TrailingDocumentPlaceholder Object",
            "Priority": "None",
            "Tags": "Health",
            "VersionIntroduced": "106",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "TrailingDocumentPlaceholder__c",
                    "FieldName": "Status__c",
                    "fieldValues": [
                        "Approved",
                        "Disapproved",
                        "Deemed",
                        "Withdrawn",
                        "Alternate Format",
                        "SA/LIS",
                        "Populated Template"
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForMarketingEventLOB",
            "UniqueId": "INSAddPickListValueForMarketingEventLOB",
            "Name": "Add Picklist Value to the Line Of Business Field in the Marketing Event Object",
            "Priority": "None",
            "Tags": "Health",
            "VersionIntroduced": "106",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "MarketingEvent__c",
                    "FieldName": "LineOfBusiness__c",
                    "fieldValues": [
                        "Medicare"
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
         {
            "ExternalId": "INSAddPickListValueForOpportunityType",
            "UniqueId": "INSAddPickListValueForOpportunityType",
            "Name": "Add Picklist Value to the Type Field in the Opportunity Object",
            "Priority": "None",
            "Tags": "Insurance",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-size: 12px; font-family: sans-serif;\">Add the following picklist values to the Type Picklist on the Opportunity object:</span></p><ul><li><span style=\"font-family: sans-serif;\">Endorsement</span></li></ul><p><span style=\"font-size: 12px; font-family: sans-serif;\">Here's how:</span></p><ol><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click </span><b style=\"font-size: 12px; font-family: sans-serif;\">Check Result</b><span style=\"font-size: 12px; font-family: sans-serif;\"> to open the Object Manager in a new tab.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">In the </span><b style=\"font-size: 12px; font-family: sans-serif;\">Opportunity Type Picklist Values</b><span style=\"font-size: 12px; font-family: sans-serif;\"> section, click </span><b style=\"font-size: 12px; font-family: sans-serif;\">New</b><span style=\"font-size: 12px; font-family: sans-serif;\">.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Enter&nbsp;</span><b style=\"font-family: sans-serif;\">Endorsement</b><span style=\"font-family: sans-serif; font-size: 12px;\"> into the text field.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Don't select any of the record types below the text field.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click </span><b style=\"font-size: 12px; font-family: sans-serif;\">Save</b><span style=\"font-size: 12px; font-family: sans-serif;\">.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {},
                "ToolingAPI": {
                    "fieldValues": [
                        "Endorsement"
                    ],
                    "FieldName": "Type",
                    "ObjectName": "Opportunity"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/Opportunity/FieldsAndRelationships/Type/view",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddPickListValueForQuoteStatus",
            "UniqueId": "INSAddPickListValueForQuoteStatus",
            "Name": "Add Picklist Value to the Status Field in the Quote Object",
            "Priority": "None",
            "Tags": "Insurance",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-family: sans-serif; font-size: 12px;\">Add the following picklist values to the Status Picklist on the Quote object:</span></p><ul><li><span style=\"font-family: sans-serif;\">Issued</span></li></ul><p><span style=\"font-family: sans-serif; font-size: 12px;\">Here's how:</span></p><ol><li><span style=\"font-family: sans-serif; font-size: 12px;\">Click </span><b style=\"font-family: sans-serif; font-size: 12px;\">Check Result </b><span style=\"font-family: sans-serif; font-size: 12px;\">to open the Object Manager in a new tab.</span></li><li><span style=\"font-family: sans-serif; font-size: 12px;\">In the </span><b style=\"font-family: sans-serif; font-size: 12px;\">State Picklist Values</b><span style=\"font-family: sans-serif; font-size: 12px;\"> section, click </span><b style=\"font-family: sans-serif; font-size: 12px;\">New</b><span style=\"font-family: sans-serif; font-size: 12px;\">.</span></li><li><span style=\"font-family: sans-serif; font-size: 12px;\">Enter </span><b style=\"font-family: sans-serif; font-size: 12px;\">Issued</b><span style=\"font-family: sans-serif; font-size: 12px;\"> into the big text field.</span></li><li><span style=\"font-family: sans-serif; font-size: 12px;\">Don't select any of the record types below the text field.</span></li><li><span style=\"font-family: sans-serif; font-size: 12px;\">Click Save.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {},
                "ToolingAPI": {
                    "fieldValues": [
                        "Issued"
                    ],
                    "FieldName": "Status",
                    "ObjectName": "Quote"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/Quote/FieldsAndRelationships/Status/view",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddPickListValueForProductRequirementApplicableObject",
            "UniqueId": "INSAddPickListValueForProductRequirementApplicableObject",
            "Name": "Add Picklist Value to the Applicable Object Field in the Product Requirement",
            "Priority": "None",
            "Tags": "Insurance",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "ProductRequirement__c",
                    "FieldName": "ApplicableObject__c",
                    "fieldValues": [
                        "ClaimCoverage__c"
                    ]
                },
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "VersionIntroduced": "109"
        },
        {
            "ExternalId": "INSAddPickListValueForVlocityStateModelFieldAPIName",
            "UniqueId": "INSAddPickListValueForVlocityStateModelFieldAPIName",
            "Name": "Add Picklist Value to the Field API Name Field in the Vlocity State Model",
            "Priority": "None",
            "Tags": "Insurance",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "VlocityStateModel__c",
                    "FieldName": "FieldAPIName__c",
                    "fieldValues": [
                        "CoverageStatus__c"
                    ]
                },
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "VersionIntroduced": "109"
        },
        {
            "ExternalId": "INSAddPickListValueForVlocityStateModelObjectAPIName",
            "UniqueId": "INSAddPickListValueForVlocityStateModelObjectAPIName",
            "Name": "Add Picklist Value to the Object API Name Field in the Vlocity State Model",
            "Priority": "None",
            "Tags": "Insurance",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "VlocityStateModel__c",
                    "FieldName": "ObjectAPIName__c",
                    "fieldValues": [
                        "ClaimCoverage__c"
                    ]
                },
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "VersionIntroduced": "109"
        },
        {
            "ExternalId": "INSAddFieldsToFieldSets",
            "UniqueId": "INSAddFieldsToFieldSets",
            "Name": "Add Fields to Object Field Sets",
            "Priority": "None",
            "Tags": "",
            "IsActive": true,
            "Type": "Group",
            "StepFrequency": "Always",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddFieldToQuoteDetailFieldSet",
            "UniqueId": "INSAddFieldToQuoteDetailFieldSet",
            "Name": "Add Product Child Item Sequence Field to Quote Detail Field Set",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-size: 12px;\">Add two fields to the Quote Detail Field Set on the Quote Line Item object. Here's how:</span></p><ol><li><span style=\"font-size: 12px;\">Click Check result to open the Object Manager to the Quote Line Item object in a new tab.</span></li><li><span style=\"font-size: 12px;\">On the Field Sets tab, click Quote Detail.&nbsp;</span></li><li><span style=\"font-size: 12px;\">From the top panel, find the following fields:</span><ol><li><span style=\"font-size: 12px;\">Product Child Item Sequence.</span></li><li><span style=\"font-size: 12px;\">Attribute Metadata Changes</span></li></ol></li><li><span style=\"font-size: 12px;\">Drag and drop the fields in step 3 into the </span><b style=\"font-size: 12px;\">In the Field Set</b><span style=\"font-size: 12px;\"> list on the lower panel.</span><span style=\"font-size: 12px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\"> </span></li><li><span style=\"font-size: 12px;\">Click Save.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/QuoteLineItem/FieldSets/view",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddFieldsToFieldSets",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddFieldToEditableTableFieldSet",
            "UniqueId": "INSAddFieldToEditableTableFieldSet",
            "Name": "Add Social Security Number Field to Editable Table Field Set",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<h1><span style=\"font-family: sans-serif; font-size: 12px;\">You need to add the Social Security Number field to the Editable Table field set on the Census Members object. Here's how:</span></h1><ol><li><span style=\"font-family: sans-serif; font-size: 12px;\">Click Check result to open the Object Manager in a new tab.</span></li><li><span style=\"font-family: sans-serif; font-size: 12px;\">Search for the Census Member object, then click that object.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click on the Field Set link on the right panel, then click Editable Table. &nbsp;</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">From the top panel, find Social Security Number, drag and drop it into the In the Field Set list on the lower panel. </span></li><li><span style=\"font-family: sans-serif; font-size: 12px;\">Click Save.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddFieldsToFieldSets",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddProductClassFieldToProductFieldSets",
            "UniqueId": "INSAddProductClassFieldToProductFieldSets",
            "Name": "Add Product Class Fields to Product Field Sets",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Add the </span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Parent Class</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\"> and </span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Parent Class Code</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\"> fields to the multiple field sets on the Product object. Here's how:</span></p><ol><li><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Click </span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Check result </b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">to open the Product Field Sets in a new tab.</span></li><li><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Click </span><b style=\"font-size: 14px; font-family: sans-serif;\">Get Product Spec</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">.</span></li><li><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">In the top panel, find </span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Parent Class</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\"> and </span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Parent Class Code</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">. Drag and drop it into the the Field Set list in the lower panel titled</span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\"> In the Field Set</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">.</span></li><li><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Click </span><b style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">Save</b><span style=\"font-size: 14px; font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif;\">.</span></li><li><span style=\"font-size: 14px; font-family: sans-serif;\">Repeat step 2-4 for the follwowing Field Sets: </span><b style=\"font-size: 14px; font-family: sans-serif;\">QuoteDetail</b><span style=\"font-size: 14px; font-family: sans-serif;\">, </span><b style=\"font-size: 14px; font-family: sans-serif;\">EligibleProductFields</b><span style=\"font-size: 14px; font-family: sans-serif;\">, </span><b style=\"font-size: 14px; font-family: sans-serif;\">FieldsAvailableInRating</b><span style=\"font-size: 14px; font-family: sans-serif;\">, </span><b style=\"font-size: 14px; font-family: sans-serif;\">FieldsAvailableInRules</b><span style=\"font-size: 14px; font-family: sans-serif;\">.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/Product2/FieldSets/view",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddFieldsToFieldSets",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddSourceTypeBatch",
            "UniqueId": "INSAddSourceTypeBatch",
            "Name": "Add Source Type to Product Attribute Rules Batch",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-size: 12px; font-family: sans-serif;\">Click Complete to start the batch job.</span></p>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.checkBatchStatus",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.runBatchJob",
            "Options": {
                "JobName": "$VlocityNS.AttributeRuleUpgradeBatch"
            }
        },
        {
            "ExternalId": "INSFixIncompleteOverrideDefinitionBatch",
            "UniqueId": "INSFixIncompleteOverrideDefinitionBatch",
            "Name": "Fix Incomplete Override Definition Batch",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-family: sans-serif; font-size: 12px;\">Click Complete to start the batch job. </span></p>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.checkBatchStatus",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.runBatchJob",
            "Options": {
                "JobName": "$VlocityNS.FixIncompleteOverrideDefinitionBatch"
            }
        },
        {
            "ExternalId": "INSCreateInsPermissionSets",
            "UniqueId": "INSCreateInsPermissionSets",
            "Name": "Create Insurance Permission Sets",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "<p>Click Complete to create the following permission sets.</p><ul> <li>Insurance Create/Update Census Data</li> <li>Insurance View Census Data</li> <li>Insurance Create/Update Quote</li> <li>Insurance View Census Quote</li> </ul>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/PermSets/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": "$VlocityNS.VlocityInsUpgradeMethods.createInsurancePermissionSets"
        },
        {
            "ExternalId": "INSUpgradeSetValueRules",
            "UniqueId": "INSUpgradeSetValueRules",
            "Name": "Upgrade Product Attribute Set Value Rules",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<ol><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click Open Instruction to get a list of rules that need to be upgraded.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">On the table that appears, fix the rules listed.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "vlocity_ins__ProductAttributeSetValueRulesUpgrade",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSFixCensusMemberLastNameBatch",
            "UniqueId": "INSFixCensusMemberLastNameBatch",
            "Name": "Populate Census Member Last Name Field Batch",
            "Priority": "None",
            "Tags": "Health",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-family: sans-serif; font-size: 12px;\">Click Complete to start the batch job. </span></p>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.checkBatchStatus",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.runBatchJob",
            "Options": {
                "JobName": "$VlocityNS.InsUpgradeCensusMembersLastNameBatchJob"
            }
        },
        {
            "ExternalId": "INSAddPickListValueForProduct2LineOfBusiness",
            "UniqueId": "INSAddPickListValueForProduct2LineOfBusiness",
            "Name": "Add Picklist Value to the LineOfBusiness Field in the Product2 Object",
            "Priority": "None",
            "Tags": "Health",
            "VersionIntroduced": "107",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Medicare"
                    ],
                    "FieldName": "LineOfBusiness__c",
                    "ObjectName": "Product2"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForProduct2RatingProcedureType",
            "UniqueId": "INSAddPickListValueForProduct2RatingProcedureType",
            "Name": "Add Picklist Value to the RatingProcedureType Field in the Product2 Object",
            "Priority": "None",
            "Tags": "Insurance",
            "VersionIntroduced": "236",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Expression Set"
                    ],
                    "FieldName": "RatingProcedureType__c",
                    "ObjectName": "Product2"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForQuoteType",
            "UniqueId": "INSAddPickListValueForQuoteType",
            "Name": "Add Picklist Value to the Type Field in the Quote Object",
            "Priority": "None",
            "Tags": "Insurance",
            "VersionIntroduced": "238",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Renewal"
                    ],
                    "FieldName": "Type__c",
                    "ObjectName": "Quote"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddFieldToClaimLineItemFieldSets",
            "UniqueId": "INSAddFieldToClaimLineItemFieldSets",
            "Name": "Add Fields to Claim Line Item Field Sets",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<h1><span style=\"font-size: 12px; font-family: sans-serif;\">You must add these fields in the following field sets on the Claim Line Item object:</span></h1><ul><li><span style=\"font-size: 12px; font-family: sans-serif;\">Claim Item Detail - Created Date, Payee Party Id, Payee Account Id, Payee Contact Id, Status</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Expense Item Detail - Created Date, Payee Account Id, Payee Contact Id, Status</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">New Claim Item - Adjusted Amount, Status</span></li></ul><h1><span style=\"font-size: 12px; font-family: sans-serif;\">Here's how:</span></h1><ol><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click </span><b style=\"font-size: 12px; font-family: sans-serif;\">Check Result</b><span style=\"font-size: 12px; font-family: sans-serif;\"> to open the Object Manager in a new tab.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Find the Claim Line Item and click it.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click </span><b style=\"font-size: 12px; font-family: sans-serif;\">Field Sets</b><span style=\"font-size: 12px; font-family: sans-serif;\">.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">Click </span><b style=\"font-size: 12px; font-family: sans-serif;\">Claim Item Detail</b><span style=\"font-size: 12px; font-family: sans-serif;\">.</span></li><li><span style=\"font-size: 12px; font-family: sans-serif;\">In the Claim Item Detail section, find the following fields and drag and drop them into the lower section:</span><ol><li>Created Date</li><li>Payee Party Id</li><li>Payee Account Id</li><li>Payee Contact Id</li><li>Status</li></ol></li><li>Click <b>Save</b>.</li><li>Click <b>Field Sets</b>.</li><li>Click <b>Expense Item Detail</b>.</li><li><span style=\"font-size: 12px; font-family: sans-serif;\">In the Expense Item Detail section, find the following field and drag and drop them into the lower section:</span><ol><li>Created Date</li><li>Payee Account Id</li><li>Payee Contact Id</li><li>Status</li></ol></li><li>Click <b>Save</b>.</li><li>Click <b>Field Sets</b>.</li><li>Click <b>New Claim Item</b>.</li><li><span style=\"font-size: 12px; font-family: sans-serif;\">In the New Claim Item section, find the following field and drag and drop them into the lower section:</span><ol><li>Adjusted Amount</li><li>Status</li></ol></li><li>Click <b>Save</b>.</li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddFieldsToFieldSets",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddFieldToGroupCensusMemberRatingFactSourceFieldSet",
            "UniqueId": "INSAddFieldToGroupCensusMemberRatingFactSourceFieldSet",
            "Name": "Add Birthdate Field to GroupCensusMember RatingFactSource Field Set",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Manual",
            "StepFrequency": "Upgrade",
            "Instruction": "<p><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">You must add the </span><b style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Birthdate</b><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\"> field to the Rating Fact Source Fields field set on the Census Member object. Here's how:</span></p><ol><li><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Click </span><b style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Check result </b><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">to open the Object Manager in a new tab.</span></li><li><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Open the Census Member object.</span></li><li><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">On the Field Sets tab, click </span><b style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Rating Fact Source Fields</b><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">.</span></li><li><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">From the top panel, find </span><b style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Birthdate</b><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">. Drag and drop it into the the Field Set list in the lower panel.</span></li><li><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Click </span><b style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Save</b><span style=\"font-family: -apple-system, system-ui, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, &quot;Fira Sans&quot;, &quot;Droid Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">.</span></li></ol>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/ObjectManager/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddFieldsToFieldSets",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": ""
        },
        {
            "ExternalId": "INSAddPickListValueForApplicationType",
            "UniqueId": "INSAddPickListValueForApplicationType",
            "Name": "Add Picklist Value to the Application Type",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "Application__c",
                    "FieldName": "Type__c",
                    "fieldValues": [
                        "Individual Provider",
                        "Organizational Provider"
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSAddPickListValueForInsuranceCodeCategory",
            "UniqueId": "INSAddPickListValueForInsuranceCodeCategory",
            "Name": "Add Picklist Value to the Insurance Code Category",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "ToolingAPI": {
                    "ObjectName": "VlocityCode__c",
                    "FieldName": "Category__c",
                    "fieldValues": [
                        "NUCC Taxonomy Code"
                    ]
                },
                "jsAction": {
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "InsAddPicklistValueToVlocityStateModelObjectAPIName",
            "UniqueId": "InsAddPicklistValueToVlocityStateModelObjectAPIName",
            "Name": "Add Picklist Value to Vlocity State Model Object API Name",
            "Priority": "None",
            "Tags": "All",
            "VersionIntroduced": "108",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade / First Install",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Application__c",
                        "InsuranceClaim__c"
                    ],
                    "FieldName": "ObjectAPIName__c",
                    "ObjectName": "VlocityStateModel__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "InsAddPicklistValueToVlocityStateModelFieldAPIName",
            "UniqueId": "InsAddPicklistValueToVlocityStateModelFieldAPIName",
            "Name": "Add Picklist Value to Vlocity State Model Field API Name",
            "Priority": "None",
            "Tags": "All",
            "VersionIntroduced": "108",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade / First Install",
            "Instruction": "",
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "Options": {
                "jsAction": {
                    "PreCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "PostCheckMethod": "VlocityDiagnosticWizard_ToolingAPI.checkPicklistFieldValues",
                    "ExecutionMethod": "VlocityDiagnosticWizard_ToolingAPI.addPicklistFieldValues"
                },
                "ToolingAPI": {
                    "fieldValues": [
                        "Status__c",
                         "ClaimStatus__c"
                    ],
                    "FieldName": "FieldAPIName__c",
                    "ObjectName": "VlocityStateModel__c"
                }
            },
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "INSAddPickListValues",
            "PreCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "PostCheckMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField",
            "ExecutionMethod": "VlocityDiagnosticWizardBaseMethods.toolingQueryCustomField"
        },
        {
            "ExternalId": "INSCreateClmPermissionSets",
            "UniqueId": "INSCreateClmPermissionSets",
            "Name": "Create CLM Permission Sets",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "<p>Click Complete to create the following permission sets.</p><ul> <li>CLMInd Admin All</li> <li>CLMInd Runtime All</li> <li>CLMInd DocuSign Runtime All</li> </ul>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/PermSets/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": "$VlocityNS.VlocityInsUpgradeMethods.createCLMIndustriesPermissionSets"
        },
        {
            "ExternalId": "INSCreateDocgenPermissionSets",
            "UniqueId": "INSCreateDocgenPermissionSets",
            "Name": "Create Docgen Permission Sets",
            "Priority": "None",
            "Tags": "All",
            "IsActive": true,
            "Type": "Auto",
            "StepFrequency": "Upgrade",
            "Instruction": "<p>Click Complete to create the following permission sets.</p><ul> <li>IDocGenInd Design All</li> <li>DocGenInd Runtime All</li> <li>DocGenInd DocuSign Runtime All</li> </ul>",
            "AllowCustomInput": false,
            "CustomInputLabel": "",
            "CustomInputValue": "",
            "ArgumentList": "",
            "StepCommand": "",
            "CheckResultUrl": "/lightning/setup/PermSets/home",
            "PrecursorStepUniqueId": "",
            "ParentStepUniqueId": "",
            "PreCheckMethod": "",
            "PostCheckMethod": "",
            "ExecutionMethod": "$VlocityNS.VlocityInsUpgradeMethods.createDocGenIndustriesPermissionSets"
        }
    ]
}
