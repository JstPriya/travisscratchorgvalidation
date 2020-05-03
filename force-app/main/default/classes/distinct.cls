public class distinct {
	private  Set<String> pk;
	private List<ApexSample__c> ax;
    public distinct(){
       
    }
    public void getDistinctNumber(){
       
        pk = new Set<String>();
        ax=new List<ApexSample__c>();
        ax=[select PickSomeValue__c from ApexSample__c];
        for (ApexSample__c i:ax)
		{
    		pk.add(i.PickSomeValue__c); 
		} 
         System.debug('string');
        System.debug(pk);
    }
   
}