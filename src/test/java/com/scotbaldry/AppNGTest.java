package com.scotbaldry;

import org.testng.Assert;
import org.testng.annotations.*;

public class AppNGTest {

    @BeforeClass
    public void setup() {
        //Invoked when test initiated
    }

    @Test(groups = { "unit"})
    public void aUnitTest() {
        Assert.assertEquals(2,2, "Check numbers");
    }

    @Test(groups = { "smoke"})
    public void aSmokeTest() {
        Assert.assertEquals(3, 3, "Check numbers integrate");
    }
}
