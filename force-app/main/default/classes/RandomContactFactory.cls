public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer n, String lastNam){
        List<Contact> lst=new List<Contact>();
        for(integer i=0;i<n;i++){
            Contact c=new Contact(firstname='tst'+i,lastname=lastNam);
            lst.add(c);
        }
        return lst;
    }
}