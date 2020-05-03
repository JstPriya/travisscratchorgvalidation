@istest
public class TestVerifyDate {
    Public Static Date date1=Date.today();
    @istest Public static void testcase1(){
    
    VerifyDate.CheckDates(date1,date1);
    VerifyDate.CheckDates(date1,date1+32);
    }
}