package tests;

import assertLib.Assert;
import components.detectDrop;

static class detectDropTest{
	
	@Test
	public void test1() {
		Assert.assertFalse(detectDrop.detect(70.2, 70.0, 70.3,69.8,0.01 ));
	}
	
	@Test
	public void test2() {
		Assert.assertTrue(detectDrop.detect(75.4, 70.0, 71.0,69.5,0.01 ));
	}
	
}