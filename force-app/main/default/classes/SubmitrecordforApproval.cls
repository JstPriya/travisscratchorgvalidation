global with sharing class SubmitrecordforApproval {
    WebService static String SendApprovalRequest(Id recordid){
        Approval.ProcessSubmitRequest req = new Approval.ProcessSubmitRequest();
		req.setObjectId(recordid);
// submit the approval request for processing
        try{
        Approval.ProcessResult result = Approval.Process(req);
        if(result.isSuccess()){
            return 'Success';
        }
        else {
            String s;
            for(Database.Error e:result.getErrors() )
             s+=' '+e.getMessage();
        	return s;
        }
        }
        catch(Exception e){
            return e.getMessage();
        } 
    }
}