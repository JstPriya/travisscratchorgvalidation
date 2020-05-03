global class AddPrimaryContact implements Queueable {
    public Static sObject c;
    public static String Stat;
    public AddPrimaryContact(contact con,String state){
        c=con;
        Stat=state;
    }
    global static void execute(System.QueueableContext qc){
        List<Account> ac=[Select id from account where BillingState=:Stat Limit 200];
        List<Contact> conCret=new List<Contact>();
        for(Account a:ac){
            Contact newCon=(contact)c.clone(false, false, false, false);
            newCon.AccountId=a.id;
            conCret.add(newCon);
        }
        insert conCret;
    }
}