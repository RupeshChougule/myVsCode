public class AccountUtility {
	
    public static void viewAnnualRevenue(){
        
        List<Account> accountsList = [SELECT ID, Name, AnnualRevenue FROM Account];
        
        for(Account acc : accountsList){
            String acctRev = acc.Name + ':' + acc.AnnualRevenue;
            System.debug(acctRev);
        }
    }
}