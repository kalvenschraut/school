import java.util.ArrayList;
import java.util.List;

public class House extends Node implements Comparable<House> {


    public House(int value) {
        this.value = value;
    }

    @Override
    public void setLeft(Node n) {
        return;
    }

    @Override
    public void setRight(Node n) {
        return;
    }

    @Override
    public void setValue(int i) {
        return; //Value is set at instantiation.
    }

    @Override
    public int compareTo(House arg0) {
        return new Integer(this.value).compareTo(arg0.value);
    }

    //Step 5:
    @Override
    public String toString() {
        //TODO: Implement this function.
        return "";
    }

    @Override
    public int count() {
        return 1;
    }

    @Override
    public boolean verify() {
        return true;
    }

    //Step 3:
    @Override
    public List<String> findPath(int number) {
        List<String> strin = new ArrayList<String>();
        if(number == value) {
            strin.add("Done");
        }
        return strin;
    }


}
