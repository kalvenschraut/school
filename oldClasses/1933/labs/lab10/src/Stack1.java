// Stack1.java
// Simple Stack interface is implemented using a linked list
// The linked list used is a simple node class called N.  (See N.java)

import javax.xml.soap.Node;

public class Stack1 implements Stack {

    // constructor

    public Stack1() {}
    
    // selectors

    public void push(Object o) {
        start = new NodeClass(o, start);
    }

    public Object pop() {
        if (start == null)
            throw new structureEmptyException("Stack is Empty");
        else {
          Object data = start.getData();
          start = start.getNext();
          return data;
        }
    }

    public Object top() {
        if (start == null)
          return null;
        else return start.getData();
    }

    public boolean isEmpty() {
        if (start == null)
          return true;
        else return false;
    }
    public int size(){
        NodeClass temp = start;
        int i = 0;
        while(temp.getData() != null){
            temp = temp.getNext();
            i++;
        }
        return i;
    }
    public Stack1 reverse(){
        Stack1 temp = new Stack1();
        while(!isEmpty()) {
            temp.push(pop());
        }
        return temp;
    }
    // instance variables

    private NodeClass start = null;

}  // Stack1 class
