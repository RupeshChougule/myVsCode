public class AccountHandler {
	
    public static void insertAccount(Integer value){
        List<Account> addAccounts = new List<Account>();
        
        Integer counter =1;
        
        while(counter <= value){
            //display the current counter value
            System.debug('Counter Value before Incrementing ' + counter);
            //create a new account
            Account store = new Account();
            store.Name = 'Acme Inc N' + counter;
            store.AccountNumber = 'A000n' + counter;
            
            addAccounts.add(store);
            System.debug(addAccounts);
            //increment the counter
            counter = counter + 1;
            System.debug('Counter Value after incrementing ' + counter);
        }
        
        System.debug('Size of Account List: ' + addAccounts.size() );
        System.debug('Elements in Account List: ' + addAccounts);
        //insert all of the accounts in the list
        insert addAccounts;      
    }
}