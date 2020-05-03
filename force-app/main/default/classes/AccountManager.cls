@RestResource(urlMapping='/Accounts/*/contacts')
Global class AccountManager {
	@HttpGet
    Global static Account getAccount(){
        RestRequest request = RestContext.request;
        String AccountId = request.requestURI.substring(request.requestURI.lastIndexOf('/001')+1,request.requestURI.lastIndexOf('/'));
        System.debug(AccountId);
        Account result=[Select id,name, (select id, name from contacts) from account where id=:AccountId];
        return result;
    }
}