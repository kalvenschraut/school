/**
 * Created by schra447 on 3/29/16.
 */
public class HanoiR {
    public static Stack1 s = new Stack1();
    public static void main(String args[]) {
        s.push(new HanoiRecord(3,'a','b','c'));

        while(!s.isEmpty()) {
            ((HanoiRecord) s.top()).run();
        }

    }
}
