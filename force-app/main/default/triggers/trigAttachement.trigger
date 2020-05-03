trigger trigAttachement on Attachment (before insert) {
	set<String> setExtNotAllowed = new set<String> {'jpg','vbe','vbs','vbscript','ws','wsf'};
    for (Attachment attachment :Trigger.new)
    {
        System.debug('Attachement File Name'+attachment.Name);
        String strFilename = attachment.Name.toLowerCase();
        List<String> parts = strFilename.splitByCharacterType();
        System.debug('Parts----->'+parts);
        if(setExtNotAllowed.Contains(parts[parts.size()-1]))
        {
        	attachment.addError('Sorry - APEX Blocked File with this extension - could not be attached!!');
        }
    }
}