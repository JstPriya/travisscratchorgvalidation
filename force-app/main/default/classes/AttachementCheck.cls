public class AttachementCheck {
    
    @AuraEnabled
    public static boolean checkAttachments(Id recordId)
    {
      List<ContentDocumentLink> attachments = [SELECT ContentDocumentId  FROM ContentDocumentLink WHERE LinkedEntityId =:recordId];
        if(attachments!=null && attachments.size()>0){
            return true;
        }
        return false;
    }
    
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