package components;

static class detectDrop {
	@generated("blockdiagram")
	public boolean detect(real in v_fl, real in v_fr, real in v_rl, real in v_rr, real in deltaTime) {
		return comparePressure.comp(distanceCalc.calcDistance(v_fl, deltaTime), distanceCalc.calcDistance(v_fr, deltaTime), distanceCalc.calcDistance(v_rl, deltaTime), distanceCalc.calcDistance(v_rr, deltaTime)); // Main/detect 1
	}
}