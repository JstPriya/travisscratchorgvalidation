public class OpptyAttachemntsCheck {
	@AuraEnabled
    public static boolean checkAttachments(Id recordId)
    {
      List<ContentDocumentLink> attachments = [SELECT ContentDocumentId  FROM ContentDocumentLink WHERE LinkedEntityId =:recordId];
        if(attachments!=null && attachments.size()>0){
            return true;
        }
        return false;
    }
}