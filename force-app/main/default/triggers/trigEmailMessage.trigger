trigger trigEmailMessage on EmailMessage (after  insert, before insert, after update, before update) {

for(EmailMessage E: Trigger.New){
    System.debug('Email Id and Status'+ E.Id +','+E.Status);
     System.debug('Subject'+ E.Subject);
}

}