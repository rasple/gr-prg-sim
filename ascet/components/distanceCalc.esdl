package components;

static class distanceCalc
{
	//Calc the distance traveled during this time period 
	//with the given speed in km/h
	@no_side_effect public real distance(real speed, real difTime) {
		return speed/3.6*difTime;
		
		
	}
}