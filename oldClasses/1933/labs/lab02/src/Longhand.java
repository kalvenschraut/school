/**
 * Step 5
 */
public class Longhand {

    public static void main(String[] args) {
        String amountString = args[0].replace("$", "").replace(",", "");
        double amount = Double.parseDouble(amountString);
        int milDiv = (int) amount/1000000;
        amount -= milDiv*1000000;
        int thousDiv = (int) amount/1000;
        amount -= thousDiv*1000;
        int hundDiv = (int) amount;
        amount -= hundDiv;
        if(milDiv > 0){
            System.out.print(numAsString(milDiv) + " million ");
        }
        if(thousDiv > 0){
            System.out.print(numAsString(thousDiv) + " thousand ");
        }
        System.out.print(numAsString(hundDiv));
        if(amount > .001) {
            System.out.print(" and " + Math.round(amount * 100) + "/100 dollars");
        }
    }
    public static String numAsString(int num){
        String[] strings = {
                "",
                "one",
                "two",
                "three",
                "four",
                "five",
                "six",
                "seven",
                "eight",
                "nine",
                "ten",
                "eleven",
                "twelve",
                "thirteen",
                "fourteen",
                "fifteen",
                "sixteen",
                "seventeen",
                "eighteen",
                "nineteen",
                "twenty",
                "thirty",
                "forty",
                "fifty",
                "sixty",
                "seventy",
                "eighty",
                "ninety"
        };

        if (num < 20)
        {
            return strings[num];
        }
        else if (num < 1000)
        {
            String hundredsPart = strings[num / 100];
            if (!hundredsPart.isEmpty())
            {
                hundredsPart += " hundred";
                num -= 100 * (num / 100);
            }
            String tensPart = strings[20 + num / 10 - 2];
            String onesPart = strings[num % 10];
            return hundredsPart + " " + tensPart + " " + onesPart;
        }
        else
        {
            return "Too big for now";
        }
    }
}
