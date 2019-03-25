package tests;

import assertLib.Assert;

import components.randomNumberGenerator;

static class randomNumberGeneratorTest{
	
	@Test
	public void test1() {
		Assert.assertIntEqual(randomNumberGenerator.random(3,23,157),32);
		Assert.assertIntEqual(randomNumberGenerator.random(3,23,157),119);
		Assert.assertIntEqual(randomNumberGenerator.random(3,23,157),66);
	}
	

}