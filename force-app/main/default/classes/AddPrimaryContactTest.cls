@isTest
public class AddPrimaryContactTest {

    @isTest
    Public static void test1(){
        List<Account> NYList=new List<Account>();
        List<Account> CAList=new List<Account>();
        for(integer i=0;i<50;i++){
            Account nyacct=new Account(Name='test',BillingState ='NY');
            NYList.add(nyacct);
            Account caacct=new Account(Name='test',BillingState ='CA');
            CAList.add(caacct);
        }
        Insert NYList;
        Insert CAList;
        Contact c=new Contact(Lastname='test');
        Insert c;
        test.startTest();
        AddPrimaryContact ad=new AddPrimaryContact(c,'NY');
		System.enqueueJob(ad);	
        test.stopTest();
        System.assertEquals(50,  [select count() from contact where accountid =:NYList]);
    }
}