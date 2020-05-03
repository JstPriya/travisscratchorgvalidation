@isTest
public class AttachementChectTest {
    public static testMethod void checkAttachmentsTest1(){
        Opportunity oppty=new Opportunity(Name='Test', CloseDate=Date.today()+1, StageName='Prospecting');
        insert oppty;
        Blob beforeblob=Blob.valueOf('Attachment Body');
        ContentVersion cv = new ContentVersion();
        cv.title = 'test';      
        cv.PathOnClient ='test';           
        cv.VersionData =beforeblob;          
        insert cv;         
        ContentVersion testContent = [SELECT id, ContentDocumentId FROM ContentVersion where Id = :cv.Id];
        ContentDocumentLink cd=new ContentDocumentLink();
        cd.LinkedEntityId=oppty.id;
        cd.ShareType= 'V';
        cd.ContentDocumentId=testcontent.ContentDocumentId;
        cd.Visibility = 'AllUsers'; 
        insert cd;
        System.assertEquals(true, AttachementCheck.checkAttachments(oppty.id));
    }
    public static testMethod  void checkAttachmentsTest2(){
        Opportunity oppty=new Opportunity(Name='Test', CloseDate=Date.today()+1, StageName='Prospecting');
        insert oppty;
        System.assertEquals(false, AttachementCheck.checkAttachments(oppty.id));
    }
}