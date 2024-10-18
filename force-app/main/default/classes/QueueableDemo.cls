public class QueueableDemo implements System.Queueable {
	
    public void execute(System.QueueableContext context){
        System.debug('Inside of execute method of Queueable job.');
        
        List<Account> listofAccount = new List<Account>([Select Id, Name FROM Account Limit 20]);
        System.debug('List of Accounts : ' + listofAccount);
    }
}