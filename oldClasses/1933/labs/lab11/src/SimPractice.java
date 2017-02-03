/**
 * Created by schra447 on 4/12/16.
 */
public class SimPractice {
    public static PQ agenda = new PQ();
    public static void main(String[] args) {
        Event1 e1 = new Event1();
        Event2 e2 = new Event2();
        Event4 e4 = new Event4();
        agenda.add(e1,1);
        agenda.add(e2,10);
        agenda.add(e4,15);
        while(agenda.getCurrentTime() < 100){
            Event e = agenda.remove();
            e.run();
        }
    }
}
