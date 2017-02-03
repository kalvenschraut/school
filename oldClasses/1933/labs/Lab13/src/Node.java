import java.util.List;

public abstract class Node {
    protected Node left;
    protected Node right;
    protected int value;

    abstract public void setLeft(Node n);

    abstract public void setRight(Node n);

    abstract public void setValue(int i);

    abstract public int count();

    abstract public boolean verify();

    abstract public List<String> findPath(int number);

    public Node getLeft() {
        return left;
    }

    public Node getRight() {
        return right;

    }

    public int getValue() {
        return value;
    }
}
