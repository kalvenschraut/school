import javax.net.ssl.SSLContext;
import java.util.Arrays;

/**
 * Created by schra447 on 3/1/16.
 */
public class Array {
    public static void main(String[] args) {
        int[] test = {0,1,2,3,4,5,6,7,8,9};
        int[] test2 = clone(test);
        System.out.println(Arrays.equals(test, test2));
        System.out.println(test2 == test);
        System.out.println("----------------");

        double[][] test3 = make2DArray(4,3);
        System.out.println(toString(test3));
        System.out.println("----------------");

        System.out.println(sumDigits(65342));

    }
    public static int[] clone(int[] a){
        int[] arrayCopied = new int[a.length];
        for(int i = 0; i < a.length; i++){
            arrayCopied[i] = a[i];
        }
        return arrayCopied;
    }
    public static double[][] make2DArray(int row,int column){
        double[][] newArray = new double[row][column];
        for(int i = 0; i < row; i++){
            for(int j = 0; j < column; j++){
                newArray[i][j] = j + i;
            }
        }
        return newArray;
    }
    public static String toString(double[][] array){
        String ostr = "";
        for(int i = 0; i < array.length; i++ ){
            for(int j = 0; j < array[i].length; j++){
                if(j == 0){
                    ostr += "row " + i + ":";
                }
                ostr += array[i][j];
                if( j != array[i].length - 1)
                    ostr += ",";
            }
            ostr += "\n";
        }
        return ostr;
    }
    public static int sumDigits(int n){
        int sum = 0;
        while(n > 0){
            int r = n%10;
            sum += r;
            n /= 10;
        }
        return sum;
    }
}
