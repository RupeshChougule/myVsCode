public class FutuerMethodDemo {
	
    public void invokeFuturecall (){
        
        String primitiveValue = 'Future Method';
        List<String> lstPvalue = new List<String>{primitiveValue};
        
        futureMethod1(lstPvalue);
        futureMethod2();
    }
    
    @future
    public static void futureMethod1(List<String> inputParam){
        System.debug(' :This is FutureMethod 1');
        System.debug('List of values :' +inputParam);
    }
    
    @future
    public static void futureMethod2(){
        System.debug(' :This is FutureMethod 2');
    }
}