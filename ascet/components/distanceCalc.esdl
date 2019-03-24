package components;

static class distanceCalc {
	@generated("blockdiagram")
	public real calcDistance(real in speed, real in Time) {
		return((speed / 3.6) * Time); // Main/calcDistance 1
	}
}