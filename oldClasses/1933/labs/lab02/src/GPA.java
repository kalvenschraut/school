/**
 * Step 4
 */
public class GPA {

    public static void main(String[] args) {
        if (args.length == 0)
        {
            System.out.println("No arguments provided");
        }
        else
        {
            double gpa = 0;
            int numCredits = 0;
            for (int i = 0; i < args.length - 1; i+= 2)
            {
                double gradePoints = getGpa(args[i]);
                double credits = Integer.parseInt(args[i+1]);
                gpa += gradePoints * credits;
                numCredits += credits;
            }
            gpa /= numCredits;

            System.out.println("The GPA is: " + gpa);
        }

    }

    private static double getGpa(String grade)
    {
        switch (grade)
        {
            case "a":
                return 4;
            case "a-":
                return 3.66;
            case "b+":
                return 3.33;
            case "b":
                return 3;
            case "b-":
                return 2.66;
            case "c+":
                return 2.33;
            case "c":
                return 2;
            case "c-":
                return 1.66;
            case "d+":
                return 1.33;
            case "d":
                return 1;
            default: // f
                return 0;
        }
    }
}
