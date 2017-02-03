import sun.reflect.generics.tree.Tree;

/**
 * Created by schra447 on 4/19/16.
 */
public class TreeNode<T> {
    private T data;
    private TreeNode<T> right;
    private TreeNode<T> left;
    public TreeNode(){
        data = null;
        right = null;
        left = null;
    }
    public TreeNode(T data){
        this.data = data;
        right = null;
        left = null;
    }
    public void addData(T data){
        this.data = data;
    }
    public void addLeft(TreeNode<T> left){
        this.left = left;
    }
    public void addRight(TreeNode<T> right){
        this.right = right;
    }
    public T getData(){
        return data;
    }
    public TreeNode<T> getRight(){
        return right;
    }
    public TreeNode<T> getLeft(){
        return left;
    }
}
