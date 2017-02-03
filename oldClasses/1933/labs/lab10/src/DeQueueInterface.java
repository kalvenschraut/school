

/**
 * Created by schra447 on 4/5/16.
 */
public interface DeQueueInterface<T> {
    // this method places a new item at the front of the DeQueue
    void addFirst ( T item );
    // this method places a new item at the end of the DeQueue
    void addLast (T item );
// this method removes the first item in the DeQueue
    T removeFirst ();
    // this method removes the last item in the DeQueue
    T removeLast ();
}
