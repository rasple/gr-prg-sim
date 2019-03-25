package tests;

import assertLib.Assert;
import components.distanceCalc;

static class distanceCalcTest{
	
	@Test
	public void test1() {
		Assert.assertNear(distanceCalc.calcDistance(3.6, 0.5), 0.5, 0.0001);
		
	}
	
}