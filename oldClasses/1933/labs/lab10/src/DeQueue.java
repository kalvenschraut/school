import com.sun.org.apache.xpath.internal.SourceTree;

import javax.xml.soap.Node;

/**
 * Created by schra447 on 4/5/16.
 */
public class DeQueue<T> implements DeQueueInterface<T>{
    private NodeClass front = null;
    private NodeClass end = null;
    public void addFirst(T item){
        end = front;
        front = new NodeClass(item, front);
    }
    public void addLast(T item){
        if(end != null) {
            end.setNext(new NodeClass(item, null));
            end = end.getNext();
        }else{
            end = new NodeClass(item,null);
            front = end;
        }
    }
    public T removeFirst(){
        T obj = (T) front.getData();
        front = front.getNext();
        return obj;
    }
    public T removeLast(){
        T obj = (T) end.getData();
        end.setData(null);
        NodeClass temp = front;
        while(temp.getData() != null){
            if(temp.getNext().getData() == null){
                end = temp;
            }
            temp = temp.getNext();
        }
        return obj;
    }

    public static void main(String[] args) {
        String name1 = "Bob";
        String name2 = "Fred";
        String name3 = "George";
        DeQueue stack1 = new DeQueue();
        Stack1 stack2 = new Stack1();
        stack1.addFirst(name1);
        stack1.addFirst(name2);
        stack1.addFirst(name3);

        stack2.push(name1);
        stack2.push(name2);
        stack2.push(name3);

        DeQueue queue1 = new DeQueue();
        Q1 queue2 = new Q1();
        queue1.addLast(name1);
        queue1.addLast(name2);
        queue1.addLast(name3);

        queue2.add(name1);
        queue2.add(name2);
        queue2.add(name3);


        System.out.println(stack1.removeFirst());
        System.out.println(stack2.pop());
        System.out.println("--------------------");
        System.out.println(stack1.removeFirst());
        System.out.println(stack2.pop());
        System.out.println("--------------------");
        System.out.println(stack1.removeFirst());
        System.out.println(stack2.pop());
        System.out.println("--------------------");

        System.out.println(queue1.removeFirst());
        System.out.println(queue2.remove());
        System.out.println("--------------------");
        System.out.println(queue1.removeFirst());
        System.out.println(queue2.remove());
        System.out.println("--------------------");
        System.out.println(queue1.removeFirst());
        System.out.println(queue2.remove());

       /* System.out.println(stack2.top());
        stack2 = stack2.reverse();
        System.out.println(stack2.top());
        System.out.println(stack2.size());
        System.out.println(queue2.front());
        queue2.reverse();
        System.out.println(queue2.front());
        System.out.println(queue2.isEmpty());
        */
    }
}
