import sun.reflect.generics.tree.Tree;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 * Created by schra447 on 4/19/16.
 */
public class BinaryTree<T>{
    TreeNode<T> root;
    BinaryTree(){
        root = new TreeNode<T>();
    }
    BinaryTree(T data){
        root.addData(data);
    }

    public static void main(String[] args) {
        BinaryTree<String> tree = new BinaryTree<String>();
        try {
            Scanner scanner = new Scanner(new File("family_tree"));
            // Add the root node
            if (scanner.hasNextLine()) {
                String rootName = scanner.nextLine();
                tree.addLeft(null,rootName);
                System.out.println(rootName);
            } else {
                System.err.println("This tree doesn't have a root!");
                return;
            }
            // Add all the other nodes
            while (scanner.hasNextLine()) {
                String[] names = scanner.nextLine().split("#");
                String child = names[0];
                String mother = names[1];
                String father = names[2];
                tree.addLeft(child,mother);
                tree.addRight(child, father);
                System.out.println(child + ": " + mother + ", " + father);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("--------------");
        tree.breadthSearch();
        System.out.println("--------------");
        tree.depthSearch(tree.getRoot());
    }
    public TreeNode<T> getRoot(){
        return root;
    }
    public void addLeft(T parent, T newElement){
        if(parent == null){
            if(root.getData() == null) {
                root.addData(newElement);
            }else{
                throw new RuntimeException("Root exits, but parent was set to null");
            }
        }else{
            Q1 Q = new Q1();
            Q.add(root);
            boolean parentFound = false;
            while(Q.length() != 0){
                Object currentNode = Q.remove();
                if(((TreeNode<T>)currentNode).getData().equals(parent)){
                    ((TreeNode<T>) currentNode).addLeft(new TreeNode<T>(newElement));
                    parentFound = true;
                }else{
                    if(((TreeNode<T>) currentNode).getLeft() != null) {
                        Q.add(((TreeNode<T>) currentNode).getLeft());
                    }
                    if(((TreeNode<T>) currentNode).getRight() != null) {
                        Q.add(((TreeNode<T>) currentNode).getRight());
                    }
                }
            }
            if(!parentFound){
                throw new RuntimeException("Parent was not found");
            }
        }
    }
    public void addRight(T parent, T newElement){
        if(parent == null){
            if(root.getData() == null)
                root.addData(newElement);
            throw new RuntimeException("Root exits, but parent was set to null");
        }else{
            Q1 Q = new Q1();
            Q.add(root);
            boolean parentFound = false;
            while(Q.length() != 0){
                Object currentNode = Q.remove();
                if(((TreeNode<T>)currentNode).getData().equals(parent)){
                    ((TreeNode<T>) currentNode).addRight(new TreeNode<T>(newElement));
                    parentFound = true;
                }else{
                    if(((TreeNode<T>) currentNode).getLeft() != null) {
                        Q.add(((TreeNode<T>) currentNode).getLeft());
                    }
                    if(((TreeNode<T>) currentNode).getRight() != null) {
                        Q.add(((TreeNode<T>) currentNode).getRight());
                    }
                }
            }
            if(!parentFound){
                throw new RuntimeException("Parent was not found");
            }
        }
    }
    public void breadthSearch(){
        Q1 Q = new Q1();
        Q.add(root);
        while(Q.length() != 0){
            Object currentNode = Q.remove();
            System.out.println(((TreeNode<T>) currentNode).getData());
            if(((TreeNode<T>) currentNode).getLeft() != null) {
                Q.add(((TreeNode<T>) currentNode).getLeft());
            }
            if(((TreeNode<T>) currentNode).getRight() != null) {
                Q.add(((TreeNode<T>) currentNode).getRight());
            }

        }

    }
    public void depthSearch(TreeNode<T> tree){
        if(tree.getData() == null){
            return;
        }
        System.out.println(tree.getData());
        if(tree.getLeft() != null) {
            depthSearch(tree.getLeft());
        }
        if(tree.getRight() != null) {
            depthSearch(tree.getRight());
        }

    }

}
