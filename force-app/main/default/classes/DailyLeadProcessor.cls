global class DailyLeadProcessor implements Schedulable  {
    global void execute(System.SchedulableContext sc){
        List<lead> l=[select id,LeadSource from Lead where LeadSource ='' limit 200];
        for (Lead ld:l)
            ld.LeadSource='Dreamforce';
        Update l;
    }
}