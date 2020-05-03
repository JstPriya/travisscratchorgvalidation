public class AccountHandler {
    public static Account insertNewAccount(String s){
        Account a=new Account();
        a.Name=s;
        try{
            insert a;
        }catch(DMLException e){
            System.debug(e.getMessage());
            return null;
        }
        return a;
    }
}