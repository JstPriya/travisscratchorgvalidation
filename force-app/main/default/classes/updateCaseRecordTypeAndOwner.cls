public class updateCaseRecordTypeAndOwner {
	@AuraEnabled
    public static boolean updateRecordTypeandOwner(Id recordId)
    {
      case caseRecord = [SELECT id, RecordTypeId  FROM Case WHERE id =:recordId];
        if(caseRecord!=null){
            caseRecord.RecordTypeId='0120K000000OksO';
            caseRecord.OwnerId='00528000001ElsgAAC';
            try{
                update caseRecord;
            }
            Catch(Exception e){
                return false;
            }
        }
        return true;
    }
}