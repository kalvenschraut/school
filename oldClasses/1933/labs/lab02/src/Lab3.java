import java.util.Scanner;

/**
 * Created by schra447 on 2/9/16.
 */
public class Lab3 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter a int");
        int num = sc.nextInt();
        System.out.println(reverse(num));
        System.out.println(reverse(reverse(num)));
        System.out.println(reverse2(num));
        System.out.println(reverse2(reverse2(num)));
    }
    public static int maxDigit(int num){
        int max = 0;
        while(num > 0){
            int digit = num%10;
            if(digit > max){
                max = digit;
            }
            num = num/10;
        }
        return max;
    }

    public static int maxDigit2(int num)
    {
        if (num == 0)
            return 0;
        int digit = num % 10;
        return Math.max(digit, maxDigit2(num / 10));
    }
    public static int reverse(int num){
        int reverseInt = 0;
        while(num > 0){
            reverseInt *= 10;
            int digit = num%10;
            reverseInt += digit;
            num = num/10;
        }
        return reverseInt;
    }
    public static int reverse2(int num)
   {
       if (num < 10)
           return num;
       int firstDigit = num;
       int lengthPow = 1;
       while (firstDigit > 10)
       {
           firstDigit /= 10;
           lengthPow *= 10;
       }
       //return Integer.parseInt(String.valueOf(digit) + String.valueOf(reverse2(num / 10)));
       return reverse2(num % lengthPow) * 10 + firstDigit;
    }



}
