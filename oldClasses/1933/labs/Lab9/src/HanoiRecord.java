import javax.net.ssl.SSLContext;

/**
 * Created by schra447 on 3/29/16.
 */
public class HanoiRecord extends ActivationRecord{
    private int n; // value of parameter n for this instance of factorial
    private char from;
    private char to;
    private char tmp;
    private static int count;
    private int line = 0;
    public HanoiRecord(int n,char from,char to, char tmp) {
        this.n = n;
        this.from = from;
        this.to = to;
        this.tmp = tmp;
    }
    public void run() {
        count++;
        switch (line) {
            case 0:
                if (n == 1) {
                    System.out.println(" Move disk 1 from " + from + " to " + to);
                    HanoiR.s.pop();
                    return;
                }
                HanoiR.s.push(new HanoiRecord(n - 1, from, tmp, to));
                line = 1;
                return;
            case 1:
                System.out.println(" Move disk " + n + " from " + from + " to " + to);
                HanoiR.s.pop();
                HanoiR.s.push(new HanoiRecord(n - 1, tmp, to, from));
                return;
            default:
                System.out.println("\nWe should not get here.");
        }
    }
}
