public class ContactAndLeadSearch {
    public static List<List< SObject>> searchContactsAndLeads(String s){
        List<List< SObject>> scandl=[find :s in name fields returning Contact(lastname,firstname), lead(name)];
        return scandl;
    }
}