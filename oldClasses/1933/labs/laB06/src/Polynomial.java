/**
 * Created by schra447 on 3/1/16.
 */
public class Polynomial {
    private double a = 0;
    private double b = 0;
    private double c = 0;

    public static void main(String[] args) {
        Polynomial p = new Polynomial(2,4,6);
        System.out.println(p.getA());
        System.out.println(p.getB());
        System.out.println(p.getC());
        Polynomial p2 = new Polynomial(5,3,1);
        System.out.println(p.add(p2));
        System.out.println(p.evaluate(2));

    }
    Polynomial(double a, double b, double c){
        this.a = a;
        this.b = b;
        this.c = c;
    }
    public double getA(){
        return a;
    }
    public double getB(){
        return b;
    }
    public double getC(){
        return c;
    }
    public Polynomial add(Polynomial p){
        double a = this.a + p.getA();
        double b = this.b + p.getB();
        double c = this.c + p.getC();

        return new Polynomial(a,b,c);
    }
    public double evaluate(double x){
        double a = Math.pow(x,2) * this.a;
        double b = this.b * x;
        return a + b + this.c;
    }
    public String toString(){
        return  a + "x^2 + " + b + "x + " + c;
    }
}
