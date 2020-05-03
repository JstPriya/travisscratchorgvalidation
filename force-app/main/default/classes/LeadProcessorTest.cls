@isTest
public class LeadProcessorTest {
	@isTest
    Public static void test1(){
        List<lead> insList=new List<lead>();
        for(integer i=0;i<200;i++){
            Lead l=new lead();
            l.lastname='test';
            l.Company='test';
            insList.add(l);
        }
        Insert insList;
        test.startTest();
        LeadProcessor p=new LeadProcessor();
        Database.executeBatch(p);
        test.stopTest();
    }
    
    
}