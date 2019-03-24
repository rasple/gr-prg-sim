package components;

static class randomNumberGenerator {
	integer X = 0;
	@generated("blockdiagram")
	public integer random(integer in a, integer in c, integer in m) {
		X = (((X * a) + c) % m); // Main/random 1
		return X; // Main/random 2
	}
}