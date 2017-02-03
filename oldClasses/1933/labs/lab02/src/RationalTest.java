import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by schra447 on 2/2/16.
 */
public class RationalTest {

    @Test
    public void testSetNum() throws Exception {

    }

    @Test
    public void testSetDen() throws Exception {

    }

    @Test
    public void testGetNum() throws Exception {

    }

    @Test
    public void testGetDen() throws Exception {

    }

    @Test
    public void testAddRational() throws Exception {
        Rational r1 = new Rational(1,3);
        Rational r2 = new Rational(3,4);
        r1.addRational(r2);
        assertEquals(r1.getNum(),13);
        assertEquals(r1.getDen(),12);

    }

    @Test
    public void testSubRational() throws Exception {
        Rational r1 = new Rational(1,3);
        Rational r2 = new Rational(3,4);
        r1.subRational(r2);
        assertEquals(r1.getNum(),-5);
        assertEquals(r1.getDen(),12);

    }

    @Test
    public void testMulRational() throws Exception {
        Rational r1 = new Rational(1,3);
        Rational r2 = new Rational(3,4);
        r1.mulRational(r2);
        assertEquals(r1.getNum(),3);
        assertEquals(r1.getDen(),12);

    }

    @Test
    public void testDivRational() throws Exception {
        Rational r1 = new Rational(1,3);
        Rational r2 = new Rational(3,4);
        r1.divRational(r2);
        assertEquals(r1.getNum(),4);
        assertEquals(r1.getDen(),9);
    }

    @Test
    public void testSetRational() throws Exception {
        Rational r1 = new Rational(1,3);
        r1.setRational();

    }
}