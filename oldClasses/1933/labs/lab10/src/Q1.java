// Example 27
// Queue implementation using a linked list of nodes (see N.java)

import javax.xml.soap.Node;

public class Q1 implements Q {

    // constructor

    public Q1() {}

    // selectors

    public void add(Object o) {

        if (size == 0) {
          front = new NodeClass(o, null);
          rear = front;
        }
        else {
          rear.setNext(new NodeClass(o, null));
          rear = rear.getNext();
        }
        size++;
    }

    public Object remove(){

        Object answer;

        if (size == 0) {
            throw new structureEmptyException("Queue is Empty");
        }
        
        answer = front.getData();
        front = front.getNext();
        size--;
        if (size == 0)
          rear = null;
        return answer;
    }

    public int length() {
        return size;
    }
    public boolean isEmpty(){
        if (front == null && rear == null)
            return true;
        else return false;
    }
    public Object front(){
        return front.getData();
    }
    public void replace(Object o){
        front.setData(o);
    }
    public void reverse(){
        Stack1 temp = new Stack1();
        while(!isEmpty()){
            temp.push(remove());
        }
        while(!temp.isEmpty()){
            add(temp.pop());
        }
    }

    private int size;
    private NodeClass front;
    private NodeClass rear;

}  // Q1 class

