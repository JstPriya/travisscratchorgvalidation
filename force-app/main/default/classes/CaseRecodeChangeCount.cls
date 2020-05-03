public class CaseRecodeChangeCount {
    
    //Method to update ownership transfer count (Ownership_Transfer_Count__c) on case from case trigger
    public void OwnershipTransferCount(List<Case> newc, Map<id,case> oldc){
       	Profile pf=[Select id from profile where name='System Administrator' Limit 1];
            if(Userinfo.getProfileId()!=pf.id && (!(Userinfo.getUserName().contains('BNSF')))){
                for(Case cs:newc){
                    
                    if(cs.OwnerId!=(oldc.get(cs.id).OwnerId)){
                       if(cs.Ownership_Transfer_Count__c!=null)
                       cs.Ownership_Transfer_Count__c+=1;
                        else
                        cs.Ownership_Transfer_Count__c=1; 
                        
                    }
            }
          }  
    }
      
    //Method to update  team member change count (Team_Transfer_Count__c) on case
    // as we cannot update team member, we call this method when we insert team member to the case
      public void CaseTeamMemberChange(List<CaseTeamMember> newc){
       
            List<id> caseid=new List<id>();
            for(CaseTeamMember ct:newc){
                caseid.add(ct.ParentId);
            }            
            Map<id,case> cases=new Map<id,case>([Select id,Team_Transfer_Count__c from case where id in :caseid]);
            List<case> updatecase=new List<case>();
            for(CaseTeamMember cs:newc){
                case c=cases.get(cs.ParentId);
                 if(c.Team_Transfer_Count__c!=null)
                     c.Team_Transfer_Count__c+=1;
                    else
                        c.Team_Transfer_Count__c=1;
                    updatecase.add(c);
            }
            
           Database.update(updatecase);
    }
    //Method to update  pre define case team  change count (Team_Transfer_Count__c) on case  
    // as we cannot update team member, we call this method when we insert team template record(pre defined teams) to the case
    public void CaseTeamChange(List<CaseTeamTemplateRecord> newc){
       		List<id> caseid=new List<id>();
            for(CaseTeamTemplateRecord ct:newc){
                caseid.add(ct.ParentId);
            }            
            Map<id,case> cases=new Map<id,case>([Select id,Team_Transfer_Count__c from case where id in :caseid]);
            List<case> updatecase=new List<case>();
                for(CaseTeamTemplateRecord cs:newc){
                    case c=cases.get(cs.ParentId);
                    if(c.Team_Transfer_Count__c!=null)
                     c.Team_Transfer_Count__c+=1;
                    else
                        c.Team_Transfer_Count__c=1;
                        updatecase.add(c);
                }
            update(updatecase);
	}
}