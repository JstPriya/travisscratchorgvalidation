trigger TrigCase on Case (before update) {
    
    CaseRecodeChangeCount crc=new CaseRecodeChangeCount();
    crc.OwnershipTransferCount(trigger.new, trigger.oldMap);

}