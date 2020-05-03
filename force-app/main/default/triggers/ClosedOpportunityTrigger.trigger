trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
  List<Task> t=new List<Task>();
    for(Opportunity o:Trigger.new){
        if(o.stageName=='Closed Won'){
       Task tk=new Task();
            tk.Subject='Follow Up Test Task';
            tk.WhatId=o.Id;
            t.add(tk);
        }
    }
    insert t;
    
}