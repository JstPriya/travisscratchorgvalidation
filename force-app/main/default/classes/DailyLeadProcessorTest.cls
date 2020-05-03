@isTest
public class DailyLeadProcessorTest {
    public static String cronexp = '0 0 0 15 3 ? 2022';
	@isTest
    public static void test1(){
        List<lead> l=new List<Lead>();
        
        for(integer i=0;i<200;i++){
            lead ld=new Lead(lastname='test',company='test');
            l.add(ld);
        }
        Insert l;
        test.startTest();
        String jobId = System.schedule('ScheduledApexTest',cronexp,new DailyLeadProcessor());
        test.stopTest();
    }
}