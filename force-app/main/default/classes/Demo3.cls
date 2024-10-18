public class Demo3 {
	
    public void mainValueMethod(){
        String webUrl = 'www.Salesforce.com';
        
        System.debug('Before value call : '+ webUrl);
        passByValueCall(weburl);
		System.debug('After value call : '+ webUrl);        
    }
    
    private void passByValueCall(String websiteUrlValue){				//Pass by Valu call
        websiteUrlValue = 'www.github.com';
    }
    
    public void mainReferenceMethod(){
        
        Account a = new Account();
        a.name = 'Test Account';
        a.Website = 'www.Salesforce.com';
        
        System.debug('Before reference call : '+ a);
        passByRefCall(a);
		System.debug('After reference call : '+ a);
    }
    
    private void passByRefCall(Account a){								//Pass by Reference call
        a.Website = 'www.github.com';
    }
}

/*
Demo3 d = new Demo3();
d.mainValueMethod();

Demo3 d1 = new Demo3();
d1.mainReferenceMethod();
*/