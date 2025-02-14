import java.math.BigInteger;
import java.util.Scanner;

public class Fun {

  public static void main(String[] args) {
    char n1 = 65535;
    short n2 = 32767;
    int n3 = 2147483647;   
    long n4 = 2147483647;
    String str = "89467598734579879862";
    Integer i = new Integer(n3);
    BigInteger bi = new BigInteger(str);

    for (long j = 0; j < n2; j++) {
      System.out.println("hi!");
    }
    
    System.out.println("Hello, world!\n");
    System.out.println(n1);
    System.out.println(i);
    System.out.println(bi);
    System.out.println(i + n3);
    //System.out.println(n3);
   }
  
}
