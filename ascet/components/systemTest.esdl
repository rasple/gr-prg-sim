package components;

static class systemTest {
	real t = 0.0;
	real faktor = 1.0;
	boolean dropPressure = false;
	warningFunction warningFunction_instance;
	boolean sound;
	real random = 1.0;
	real dt_;
	boolean drop=false;
	warningFunction warningFunction_in;

	@generated("blockdiagram")
	@thread
	public void calc() {
		dt_ = DeltaTimeService.deltaT; // Main/calc 1
		random = real(randomNumberGenerator.random(3, 23, 78)); // Main/calc 2
		t = (dt_ + t); // Main/calc 3
		if ((t >= 20.0) && (t <= 40.0)) {
			faktor = 1.05; // Main/calc 4/if-then 1
		} else {
			faktor = 1.0; // Main/calc 4/if-else 1
		} // Main/calc 4
		drop = detectDrop.detect((faktor * random), random, random, random, dt_); // Main/calc 5
		if (drop) {
			warningFunction_in.warningFunctionStatemachineTrigger(); // Main/calc 6/if-then 1
		} // Main/calc 6
		warningFunction_in.dt_ = dt_; // Main/calc 7
		sound = warningFunction_in.on; // Main/calc 8
		if (!drop) {
			sound = false; // Main/calc 9/if-then 1
		} // Main/calc 9
	}
}