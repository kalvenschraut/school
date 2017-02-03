/**
 * Step 1 and 2
 */
public class Av {

    public static void main(String[] args) {
        if(args.length == 0){
            System.out.println("No arguments were provided");
        }else {
            double sum = 0;
            for (int i = 0; i < args.length; i++) {
                sum += Double.parseDouble(args[i]);
            }
            double average = sum / args.length;
            System.out.println("The average of " + args.length + " value(s) is " + average);
        }
    }
}
