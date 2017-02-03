/**
 * Created by schra447 on 3/29/16.
 */
public class FactRecord extends ActivationRecord {
    // *1* formal parameters
    private int n; // value of parameter n for this instance of factorial

    // *2* no local variables for factorial


    // *3* resume location
    private int line = 0;

    /*
     Note that nay method that contains a recursive call will have at least two possible "resume" locations
         1 - The start of the method (entry point when the method is first invoked)
         2 - The location immediately after returning from the recursive call.
                 However, methods that have more than one recursive call, will have an additional entry point for
                 each additional recursive call. This is needed because once a recursive call is complete, the
                 program must "know" where to come back to in order to resume execution immediately after the
                 point of the recursive call
     */

    // constructor for the new instance of a FactRecord activation record
    public FactRecord(int newN) {
        n = newN;
    }

    // *4* reference to code for factorial is kept within the run() method
    public void run() {
        switch (line) {
            case 0:                                             // Entry point
                if (n == 0) {
                    FactR.returnedValue = 1;                    // set return global return value
                    FactR.s.pop();                              // This call is done, remove the frame from the stack
                    return;
                }
                FactR.s.push(new FactRecord(n - 1));            // If we are not done, then we push a new frame onto the Stack
                line = 1;                                       // Set a resume point after the recursive call
                return;
            case 1:                                             // Resume point after we have a factorial value for the n - 1 case
                FactR.returnedValue = n * FactR.returnedValue;    // Set the global return value
                FactR.s.pop();                                  // This call is done, time to remove it from the stack
                return;
            default:
                System.out.println("\nWe should not get here.");
        }
    }
}
