global class LeadProcessor implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc) {
     return Database.getQueryLocator('Select id,LeadSource  from lead');
    }
    
    Global void execute(Database.BatchableContext bc,List<Lead> l){
        for(Lead up:l){
            up.LeadSource='Dreamforce';
        }
    	update l;
    }
    Global void finish(Database.BatchableContext bc){
        System.debug('execution completed');
    }
    
}