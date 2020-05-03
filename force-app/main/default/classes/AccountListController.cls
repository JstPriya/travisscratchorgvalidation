public class AccountListController {
    @AuraEnabled
    public static List<Account> getAccounts() {
        List<Account> accounts = [SELECT Id, Name FROM Account LIMIT 10];
        return accounts;
    }
    @AuraEnabled
    public static List<Contact> getContacts(Id recordId) {
        List<Contact> contacts = [SELECT Id, Name FROM Contact where AccountId=:recordId LIMIT 10];
        return contacts;
    }
}