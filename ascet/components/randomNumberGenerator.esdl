package components;

type int_m is integer 0 .. 300;
static class randomNumberGenerator {
	int_m X = 3;

	@generated("blockdiagram")
	public integer random(int_m in a, int_m in c, int_m in m) {
		X = (((a * X) + c) % m); // Main/random 1
		return X; // Main/random 2
	}
}