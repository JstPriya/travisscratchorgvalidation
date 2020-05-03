public class FeedBackController {
    Private Id tid;
    public string feedback {get;set;}
    public string q1{get;set;}
    public FeedBackController(ApexPages.StandardController controller) {
   tid=Apexpages.currentpage().getparameters().get('id'); 
    }
       public FeedBackController() {
 tid=Apexpages.currentpage().getparameters().get('id');
    }
   
    public  pagereference save(){
          list<ticket__c> tik=new    List<ticket__c>();
       tik=[select name ,Description__c from ticket__c where  id=:tid ];   
        Feedback__c f=new Feedback__c();
        if(tik!=null){
        for(ticket__c tc:tik){
       f.ticket_f__c=tc.Id ;
        f.Ticket_description__c=tc.Description__c;
      }
         }
        system.debug(feedback);
        f.feed_back__c=feedback;        
       insert f;
       return null;
    }    
}