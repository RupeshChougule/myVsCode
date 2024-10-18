public class Demo1 {
    public void display(String message){
        System.debug('Note : ' + message);
    }
    
    public void addition(Integer num1, Integer num2){
        integer sum = num1 + num2;
        System.debug('Addition is : ' + sum);
    }
}

/*
Demo1 d = new Demo1();
d.display('Salesforce Apex');

Demo1 d1 = new Demo1();
d1.addition(10,10);
*/