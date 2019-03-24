package tests;

import assertLib.Assert;
import components.comparePressure;


static class comparePressureTest{
	
	@Test
	public void test1() {
		Assert.assertTrue(comparePressure.comp(5.0,5.0,5.0, 5.5));
		
	}
	
	@Test
	public void test2(){
		Assert.assertTrue(comparePressure.comp(3.0,3.0,3.0, 2.5));
	}
	
	@Test
	public void test3() {
		Assert.assertFalse(comparePressure.comp(5.0,5.0,5.0, 5.03));
		
	}
	
	@Test
	public void test4(){
		Assert.assertFalse(comparePressure.comp(3.0,3.0,3.0, 2.985));
	}
	
}
