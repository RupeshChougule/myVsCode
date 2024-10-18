public class MyAccountController {
	
    public List<Account> accountList {get; set;}
    
    public MyAccountController(){
        accountList = [SELECT Id, Name, Website FROM Account WHERE Website != Null];
    }
}