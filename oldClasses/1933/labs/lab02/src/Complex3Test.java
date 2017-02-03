import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by schra447 on 2/2/16.
 */
public class Complex3Test {

    @Test
    public void testSetRealPart() throws Exception {
        Complex3 c = new Complex3(1, 2);
        c.setRealPart(3);
        assertEquals(c.getRealPart(), 3, 1e-6);
    }

    @Test
    public void testSetImaginaryPart() throws Exception {
        Complex3 c = new Complex3(1, 2);
        c.setImaginaryPart(5);
        assertEquals(c.getImaginaryPart(), 5, 1e-6);

    }

    @Test
    public void testGetRealPart() throws Exception {
        Complex3 c = new Complex3(1, 2);
        assertEquals(c.getRealPart(), 1, 1e-6);

    }

    @Test
    public void testGetImaginaryPart() throws Exception {
        Complex3 c = new Complex3(1, 2);
        assertEquals(c.getImaginaryPart(), 2, 1e-6);
    }

    @Test
    public void testAddComplex() throws Exception {
        Complex3 c = new Complex3(1, 2);
        Complex3 c2 = new Complex3(4, 5);
        c.addComplex(c2);
        assertEquals(c.getRealPart(), 5, 1e-6);
        assertEquals(c.getImaginaryPart(), 7, 1e-6);
    }

    @Test
    public void testSubtractComplex() throws Exception {
        Complex3 c = new Complex3(4, 5);
        Complex3 c2 = new Complex3(1, 3);
        c.subtractComplex(c2);
        assertEquals(c.getRealPart(),3 , 1e-6);
        assertEquals(c.getImaginaryPart(), 2, 1e-6);

    }
}