trigger AccountTrigger on Account (before insert, before update, after update) {
	
    if(Trigger.isBefore && Trigger.isInsert){
        System.debug('I am Before Insert trigger.');
    }
    
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            System.debug('I am Before Update trigger');
        }
         if(Trigger.isAfter){
            System.debug('I am After Update trigger');
        }
    }  
}