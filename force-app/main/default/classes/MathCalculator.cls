public class MathCalculator {
	
    public void doMath(Integer a, Integer b){
        MathCalculator.printOutput(a,b);
    }
    
    private static Integer add(Integer a, Integer b){
        return a+b;
    }
    private static Integer multiply(Integer a, Integer b){
        return a*b;
    }
    private static Integer subtract(Integer a, Integer b){
        return a-b;
    }
    private static void printOutput(Integer a, Integer b){
        System.debug('Addition is : '+ MathCalculator.add(a,b));
        System.debug('Multiplication is : '+ MathCalculator.Multiply(a,b));
        System.debug('Subtraction is : '+ MathCalculator.subtract(a,b));
    }
}

/*
MathCalculator m = new MathCalculator();
m.doMath(7,3);
*/