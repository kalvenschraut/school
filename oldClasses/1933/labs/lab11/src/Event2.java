import java.util.Random;

/**
 * Created by schra447 on 4/12/16.
 */
public class Event2 implements Event {
    public void run() {
        System.out.println(SimPractice.agenda.getCurrentTime());
        System.out.println("Event2");
        Random r = new Random();
        int time = r.nextInt(30);
        while(time == 0){
            time = r.nextInt(30);
        }
        SimPractice.agenda.add(this,time);

    }
}
