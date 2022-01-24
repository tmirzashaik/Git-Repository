trigger DeploymentJobTrigger on copado__Deployment_Job__c (before update) {
    
	for(copado__Deployment_Job__c job : Trigger.new) {
        copado__Deployment_Job__c oldJob = Trigger.oldMap.get(job.ID);
        
        if(job.copado__Status__c != oldJob.copado__Status__c && job.copado__Status__c == 'In progress') {
            // Check if the new job is of type URL Callout
            copado__Deployment_Job__c newJob = [Select Id, copado__Step__c, copado__Step__r.Name, copado__Step__r.copado__Type__c, copado__Destination_Org__r.copado__To_Org__r.copado__Environment__r.copado__Org_ID__c FROM copado__Deployment_Job__c WHERE ID = :job.id LIMIT 1];
            if (newJob.copado__Step__r.copado__Type__c == 'URL Callout' && newJob.copado__Step__r.Name == OwnBackupIntegration.ownBackupStepName) {
                
                // Get the targetOrgId of the deployment
            	String targetOrgId = newJob.copado__Destination_Org__r.copado__To_Org__r.copado__Environment__r.copado__Org_ID__c;
            	System.debug('targetOrgId: '+targetOrgId);
                
                if (targetOrgId != null) {
            		OwnBackupIntegration.executeDataBackup(targetOrgId, newJob.copado__Step__c);
                }
            }
        }
    }
}