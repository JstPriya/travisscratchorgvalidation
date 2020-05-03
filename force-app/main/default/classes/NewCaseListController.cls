public class NewCaseListController {
    public List<case> getNewCases(){
        List<case> lt=new List<case>();
        lt=[Select id,CaseNumber from Case where status='New'];
        return lt;
    }
}