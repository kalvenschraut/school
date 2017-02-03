import java.util.Scanner;

/**
 * Step 4
 */
public class Rational {
    private int num;
    private int den;
    public static void main(String[] args){
        Rational r = new Rational(1,4);
        r.setRational();
        System.out.println(r.toString());
    }
    public Rational(int num,int den){
        this.num = num;
        this.den = den;
    }
    public void setNum(int num){
        this.num = num;
    }
    public void setDen(int den){
        this.den = den;
    }
    public int getNum(){
        return num;
    }
    public int getDen(){
        return den;
    }
    public void setRational(){
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter in the numerator ");
        int num = sc.nextInt();
        System.out.println("Enter in the denominator ");
        int den = sc.nextInt();
        this.num = num;
        this.den = den;
    }
    public String toString(){
        String ostr = getNum() + "/" + getDen();
        return ostr;
    }
    public void addRational(Rational r){
        int origDen = den;
        den *= r.getDen();
        num *= r.getDen();
        num += (r.getNum()*origDen);
    }
    public void subRational(Rational r){
        int origDen = den;
        den *= r.getDen();
        num *= r.getDen();
        num -= r.getNum()*origDen;
    }
    public void mulRational(Rational r){
        den *= r.getDen();
        num *= r.getNum();
    }
    public void divRational(Rational r){
        den *= r.getNum();
        num *= r.getDen();
    }
}
