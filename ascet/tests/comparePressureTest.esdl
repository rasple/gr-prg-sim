package tests;

import assertLib.Assert;
import components.comparePressure;

// zweimal auf true sodass einer einmal drüber und einmal darunter liegen

static class comparePressureTest{
	
	@Test
	public void test1() {
		Assert.assertTrue(comparePressure.comp(5.0,5.0,5.0, 5.025));
		
	}
	
}
//auf false bei knapp daneben