package tests;

import assertLib.Assert;
import components.randomNumberGenerator;

static class randomNumberGeneratorTest{
	
	@Test
	public void test1() {
		Assert.assertIntEqual(randomNumberGenerator.random(10,50,60),50);
		
	}
	
}