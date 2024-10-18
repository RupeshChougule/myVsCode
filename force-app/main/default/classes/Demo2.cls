public class Demo2 {

    String helloWorld;		 								//Instance member Variable
    public static final String DEFAULT_STRING;				//Static member Variable
    
    static{													//Static Initializer Block
        DEFAULT_STRING = 'Hello World';
    }
    
    public Demo2(){											//Constructor
        this(DEFAULT_STRING);
    }
    
    public Demo2(String strToDisplay){						//Overloaded Constructor
        this.helloWorld = strToDisplay;
    }
    
    public void Output(){									//Method
        System.debug('Display string : '+ helloWorld);
    }
    
     public static void Output1(){							//Static Method
        System.debug('This is a Static method');
    }
}

/*
Demo2 d = new Demo2();
d.Output();

Demo2 d1 = new Demo2('Hello Salesforce');
d1.Output();

Demo2.Output1();
*/