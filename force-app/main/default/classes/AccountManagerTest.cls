@isTest
public class AccountManagerTest {
	 @isTest static void testGetCaseById() {
        Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'https://yourInstance.salesforce.com/services/apexrest/Accounts/'
            + recordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account thisAccont = AccountManager.getAccount();
        // Verify results
        
        
    }
    
    static Id createTestRecord() {
        // Create test record
        Account accTest= new Account(name='test');
        insert accTest;
        Contact cntTest=new Contact(Lastname='test',Account=accTest);
        insert cntTest;
        return accTest.Id;
    }       
}