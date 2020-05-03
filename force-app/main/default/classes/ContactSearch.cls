public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String mailingPostalCode){
        Contact[] c=[select name from contact where lastname=:lastName and  MailingPostalCode=:mailingPostalCode ];
        List<Contact> lc=new List<Contact>();
        for(Contact i:c){
            lc.add(i);
        }
        return lc;
    }
}