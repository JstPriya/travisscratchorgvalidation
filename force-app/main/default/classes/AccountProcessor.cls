public class AccountProcessor {
    Public string s;
    public AccountProcessor(String s){
        s=s;
    }

    @future
    Public Static Void countContacts(List<id> acctIds){
        List<Account> acctList=[Select id,Number_of_Contacts__c from Account where id=:acctIds];
        //List<Contact> cntList=[Select id,Accountid from contact where Accountid=:acctIds];
        for(Account a: acctList){
            List<Contact> cntList=[Select id,Accountid from contact where Accountid=:a.id];
            a.Number_of_Contacts__c=cntList.size();
        }
        update acctList;
    }
}