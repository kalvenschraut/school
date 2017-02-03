import java.util.List;

public class Juncture extends Node {

    public Juncture() {
        value = -1;
    }

    public void setLeft(Node n) {
        left = n;
    }

    public void setRight(Node n) {
        right = n;
    }

    public void setValue(int i) {
        value = i;
    }

    @Override
    public int count() {
        int leftCount = 0;
        int rightCount = 0;
        if (left != null) {
            leftCount = left.count();
        }
        if (right != null) {
            rightCount = right.count();
        }
        return leftCount + rightCount + 1;
    }

    @Override
    public boolean verify() {
        if (left != null && (!left.verify() || left.getValue() > this.getValue())) {
            return false;
        }
        if (right != null && (!right.verify() || right.getValue() <= this.getValue())) {
            return false;
        }

        return true;

    }

    //STEP 2:
    public void number() {
        if(this.left == null && this.right == null){
            int value = this.getValue();
            this.setValue(value);
        }else {
            if (this.right.value <= 0) {
                Juncture right = (Juncture) this.right;
                right.number();
            }
            if (this.left.value <= 0) {
                Juncture left = (Juncture) this.left;
                //System.out.println(left);
                left.number();
            }
            int leftVal = this.left.value;
            int rightVal = this.right.value;
            int value = (rightVal + leftVal)/2;
            this.setValue(value);
        }
    }

    //Step 4:
    @Override
    public List<String> findPath(int number) {
        // TODO Implement this function.

        return null;
    }

    //Step 5:
    @Override
    public String toString() {
        //TODO: Implement this function.
        return "";
    }
}
