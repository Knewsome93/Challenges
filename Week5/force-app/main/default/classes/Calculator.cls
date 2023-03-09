public class Calculator {

    public Integer Add(Integer a, Integer b){
        return a + b;
    }
    
    public Integer Multiply(Integer a , Integer b){
        if(b<0){
            b= 0 - b;
            a= 0 - a;
        }
        Integer product = 0;
        
        for(Integer i = 0; i< b; i++){
            product = add(product,a);
        }
        return product;
    }
    
    public Integer Division (Integer a, Integer b){
      	Integer quotient = 0;
        Integer count = 0;
        Integer divisor = a;
        if(a==0){
        }else if(a<0 && b<0){
            a= 0-a;
            b=0-b;
            divisor= a;
        while (divisor - b >= 0){
            divisor = divisor - b;
            count ++;}
        }else if(a<0){
            a= 0-a;
            divisor = a;
            while (divisor - b >= 0){
            divisor = divisor - b;
            count ++;}
            count = 0 - count;
        }else if(b<0){
            b= 0-b;
            while (divisor - b >= 0){
            divisor = divisor - b;
            count ++;}
            count= 0 - count;
        }else{
            while (divisor - b >= 0){
            divisor = divisor - b;
            count ++;}
        }
        quotient = add(quotient,count);
        return quotient;
    }
    
    public Integer Mod(Integer a, Integer b){
        Integer quotient = Division(a,b);
        Integer remainder = a - Multiply(quotient,b);
        return remainder;
    }
}