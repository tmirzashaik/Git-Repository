@isTest
public class TestStepTrigger {
    
    private static User runningUser;
    private static copado__Environment__c sourceEnv1;
    private static copado__Environment__c targetEnv2;
    private static copado__Org__c sourceOrg1;
    private static copado__Org__c targetOrg2;
    
    private static String httpRequestBody;

    private static void setupTestData() {
        // Create admin user for creating and assigning the Copado licenses to a running user
        User adminUser = createAdminUser();
        insert adminUser;

        System.runAs(adminUser) {
            // Create running user
            runningUser = createStandardUser();
            runningUser.ProfileId = adminUser.ProfileId;
            insert runningUser;
            
            // Assign the Copado permission set to the running user
            PermissionSetAssignment psa = new PermissionSetAssignment (
                PermissionSetId = getCopadoUserPermissionSet().Id,
                AssigneeId = runningUser.Id
            );
            insert psa;

            // Assign A Copado License to the running User
            copado.GlobalAPI copadoGlobalAPI = new copado.GlobalAPI();
            copado.GlobalAPI.UserLicense UL = new copado.GlobalAPI.UserLicense();
            UL.isCopadoEnabled = true;
            UL.isCCMEnabled = true;
			UL.userId = runningUser.id;
            try {
            	copadoGlobalAPI.upsertCopadoLicense(runningUser.id, UL);
            } catch(Exception e) {
            	System.debug('When multilicense is not enabled, then it is not necessary to assign this license.');        
            }
        }
        
        System.runAs(runningUser){            
            // Create 2 environments
            sourceEnv1 = new copado__Environment__c(Name = 'Dev1', copado__Org_Id__c = '00Db0000000KFghECG');
            insert sourceEnv1;
            targetEnv2 = new copado__Environment__c(Name = 'Dev2', copado__Org_Id__c = '00Db0000000KFfoEBG');
            insert targetEnv2;
            
            // Create 2 org credentials
            sourceOrg1 = new copado__Org__c(Name = 'OrgName1', copado__Org_Type__c = 'Sandbox', copado__SFDC_Org_ID__c = 'SFDC_OrgId', copado__Token__c = 'SFDC_TOKEN', copado__Username__c = 'USERNAME1', copado__Validated_Date__c = System.now(), copado__Test_Frequency__c = 'Weekly', copado__Environment__c = sourceEnv1.Id);
            insert sourceOrg1;
            targetOrg2 = new copado__Org__c(Name = 'OrgName2', copado__Org_Type__c = 'Sandbox', copado__SFDC_Org_ID__c = 'SFDC_OrgId2', copado__Token__c = 'SFDC_TOKEN', copado__Username__c = 'USERNAME2', copado__Validated_Date__c = System.now(), copado__Test_Frequency__c = 'Weekly', copado__Environment__c = targetEnv2.Id);
            insert targetOrg2;            
        }
        
        // Create Credential Custom Setting
        OwnBackup_Credential__c credential = new OwnBackup_Credential__c(Name='DataBackupCredential');
        credential.Email__c = 'customer@copado.com';
        credential.Password__c = 'password1';
        credential.Region__c = 'app1';
        insert credential;
    }
    
	static testMethod void testStepCreation() {
        setupTestData();
        
        System.runAs(runningUser) {
            
            // 1. Create 1 deployment and 1 destination org
            copado__Deployment__c deployment1 = new copado__Deployment__c(Name = 'DEPLOYMENT_NAME', copado__Date__c = System.now(), copado__Deployment_Command_Sent__c = System.now(), copado__From_Org__c = sourceOrg1.id, copado__Schedule__c = 'Deploy now', copado__Status__c = 'Scheduled');
            insert deployment1;
            copado__Destination_Org__c destinationOrg1 = new copado__Destination_Org__c(copado__Deployment__c = deployment1.Id, copado__To_Org__c = targetOrg2.Id);
            insert destinationOrg1;
            
            // 2. Create 1 data template step and Test no data backup enforcement on the Environment
            createDataStep(deployment1.Id);
            
            List<copado__Step__c> steps = [Select Id, Name, copado__Order__c, copado__Type__c From copado__Step__c Where copado__Deployment__c = :deployment1.id ORDER BY copado__Order__c ASC];
            System.assertEquals(1, steps.size());
            
            // 3. Delete original steps and Test the "Before and after deployment" enforcement
            delete steps;
            
            targetEnv2.Data_Backup_Enforcement__c = 'Before and after deployment';
            update targetEnv2;
            
            createDataStep(deployment1.id);
            
            steps = [Select Id, Name, copado__Order__c, copado__Type__c From copado__Step__c Where copado__Deployment__c = :deployment1.id ORDER BY copado__Order__c ASC];
            System.assertEquals(3, steps.size());
            System.assertEquals(steps[0].copado__Type__c, 'URL Callout');
            System.assertEquals(steps[0].Name, OwnBackupIntegration.ownBackupStepName);
            System.assertEquals(steps[2].copado__Type__c, 'URL Callout');
            System.assertEquals(steps[2].Name, OwnBackupIntegration.ownBackupStepName);
        }
    }
    
    static testMethod void testStepCreationBeforeAfter() {
		setupTestData();
        
        System.runAs(runningUser) {
            
            // 1. Create 1 deployment and 1 destination org
            copado__Deployment__c deployment1 = new copado__Deployment__c(Name = 'DEPLOYMENT_NAME', copado__Date__c = System.now(), copado__Deployment_Command_Sent__c = System.now(), copado__From_Org__c = sourceOrg1.id, copado__Schedule__c = 'Deploy now', copado__Status__c = 'Scheduled');
            insert deployment1;
            copado__Destination_Org__c destinationOrg1 = new copado__Destination_Org__c(copado__Deployment__c = deployment1.Id, copado__To_Org__c = targetOrg2.Id);
            insert destinationOrg1;
            
            // 2. Test the "Before deployment" enforcement
            targetEnv2.Data_Backup_Enforcement__c = 'Before deployment'; 
            update targetEnv2;
            
            createDataStep(deployment1.id);
            
            List<copado__Step__c> steps = [Select Id, Name, copado__Order__c, copado__Type__c From copado__Step__c Where copado__Deployment__c = :deployment1.id ORDER BY copado__Order__c ASC];
            System.assertEquals(2, steps.size());
            System.assertEquals(steps[0].copado__Type__c, 'URL Callout');
            System.assertEquals(steps[0].Name, OwnBackupIntegration.ownBackupStepName);
            
            // 3. Delete original steps and Test the "After deployment" enforcement
            delete steps;
            targetEnv2.Data_Backup_Enforcement__c = 'After deployment';
            update targetEnv2;
            
            createDataStep(deployment1.id);
            
            steps = [Select Id, Name, copado__Order__c, copado__Type__c From copado__Step__c Where copado__Deployment__c = :deployment1.id ORDER BY copado__Order__c ASC];
            System.assertEquals(2, steps.size());
            System.assertEquals(steps[1].copado__Type__c, 'URL Callout');
            System.assertEquals(steps[1].Name, OwnBackupIntegration.ownBackupStepName);
        }
    }
    
    static testMethod void testStepExecution() {
        setupTestData();
        targetEnv2.Data_Backup_Enforcement__c = 'Before and after deployment';
        update targetEnv2;
        
        System.runAs(runningUser) {
            
            // Create 1 deployment and 1 destination org
            copado__Deployment__c deployment1 = new copado__Deployment__c(Name = 'DEPLOYMENT_NAME', copado__Date__c = System.now(), copado__Deployment_Command_Sent__c = System.now(), copado__From_Org__c = sourceOrg1.id, copado__Schedule__c = 'Deploy now', copado__Status__c = 'Scheduled');
            insert deployment1;
            copado__Destination_Org__c destinationOrg1 = new copado__Destination_Org__c(copado__Deployment__c = deployment1.Id, copado__To_Org__c = targetOrg2.Id);
            insert destinationOrg1;
            
            // Create 1 data template step
            createDataStep(deployment1.id);
            
        	Test.setMock(HttpCalloutMock.class, new TestCopadoHttpCalloutMock(200, targetEnv2.copado__Org_Id__c));
                        
            copado.GlobalAPI copadoGlobalAPI = new copado.GlobalAPI(); 
            List<copado.GlobalAPI.UserLicense> licenseList2 = (List<copado.GlobalAPI.UserLicense>)copadoGlobalAPI.listCopadoLicenses();
    		System.debug('*** licenseList: ' + licenseList2);
            
            copado__Deployment_Job__c djob = [Select Id From copado__Deployment_Job__c Where copado__Step__r.copado__Deployment__c = :deployment1.id AND copado__Step__r.Name = :OwnBackupIntegration.ownBackupStepName AND copado__Step__r.copado__Order__c = 0 LIMIT 1];
            djob.copado__Status__c = 'In progress';
            update djob;
            
            System.assertEquals(djob.copado__Status__c, 'In progress');
        }
    }
    
    static testMethod void testDataBackupStatusPoller() {
        setupTestData();
        targetEnv2.Data_Backup_Enforcement__c = 'Before deployment'; 
        update targetEnv2;
        
        System.runAs(runningUser) {
            // 1. Create 1 deployment and 1 destination org
            copado__Deployment__c deployment1 = new copado__Deployment__c(Name = 'DEPLOYMENT_NAME', copado__Date__c = System.now(), copado__Deployment_Command_Sent__c = System.now(), copado__From_Org__c = sourceOrg1.id, copado__Schedule__c = 'Deploy now', copado__Status__c = 'Scheduled');
            insert deployment1;
            copado__Destination_Org__c destinationOrg1 = new copado__Destination_Org__c(copado__Deployment__c = deployment1.Id, copado__To_Org__c = targetOrg2.Id);
            insert destinationOrg1;
            
            createDataStep(deployment1.Id);
            
            List<copado__Step__c> steps = [Select Id, Name, copado__Order__c, copado__Type__c From copado__Step__c Where copado__Deployment__c = :deployment1.id ORDER BY copado__Order__c ASC];
            System.assertEquals(2, steps.size());
                     
            Test.setMock(HttpCalloutMock.class, new TestCopadoHttpCalloutMock(200, targetEnv2.copado__Org_Id__c));
			
            System.enqueueJob(new OwnBackupIntegrationAsync('26538', steps[0].Id));
        }
    }
    
    public static void createDataStep(String deploymentId) {
        copado__Step__c step = new copado__Step__c(Name = OwnBackupIntegration.ownBackupStepName, copado__Order__c = 0, copado__Deployment__c = deploymentId, copado__Status__c = 'Not started', copado__Type__c = 'Data Template');
        step.copado__dataJson__c = '{"type":"wait","method":"POST","url":"https://app1.ownbackup.com/api/auth/v1/login?email=customer@copado.com&password=password1","body":"","queryParameters":[["email","customer@copado.com"],["password","password1"]],"headers":[["ACCEPT","application/json"]]}';
        insert step;
    }
    
    public static User createAdminUser(){
		Profile adminProfile = [Select Id From Profile Where Name = 'System Administrator' Limit 1];
        User newUser = new User();
        newUser.ProfileId = adminProfile.Id;
        newUser.FirstName = 'Rebekah';
        newUser.LastName = 'Admin';
        newUser.email = 'admin@aa.test';
        newUser.Username = 'admin@aa.test';
        newUser.Alias = 'tadmin';
        newUser.CommunityNickname = 'tadmin';
        newUser.LocaleSidKey = 'es_ES';
        newUser.emailencodingkey='UTF-8';
        newUser.languagelocalekey='en_US';
        newUser.TimeZoneSidKey='Europe/Rome';
        return newUser;
    }
    
    public static User createStandardUser(){
        Profile standardProfile = [Select Id From Profile Where Name = 'Standard User' Limit 1];
        User newUser = new User();
        newUser.ProfileId = standardProfile.Id;
        newUser.FirstName = 'Daniel';
        newUser.LastName = 'Standard';
        newUser.email = 'standard@aa.test';
        newUser.Username = 'standard@aa.test';
        newUser.Alias = 'tandard';
        newUser.CommunityNickname = 'tstand';
        newUser.LocaleSidKey = 'es_ES';
        newUser.emailencodingkey='UTF-8';
        newUser.languagelocalekey='en_US';
        newUser.TimeZoneSidKey='Europe/Rome';
        
        return newUser;
    }
    
    public static PermissionSet getCopadoUserPermissionSet(){
        return [SELECT Id FROM PermissionSet WHERE Name = 'Copado_User'];
    }
}