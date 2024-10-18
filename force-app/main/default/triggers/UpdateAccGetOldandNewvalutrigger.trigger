trigger UpdateAccGetOldandNewvalutrigger on Account (before update, after update) {
	
    if(Trigger.isUpdate){
        if(Trigger.isBefore){
            for(Account acc : Trigger.new){
            	System.debug('New Name : '+ acc.Name);
                System.debug('Old Name : '+ Trigger.oldMap.get(acc.Id).Name);
        	}
        }
        
    }
}