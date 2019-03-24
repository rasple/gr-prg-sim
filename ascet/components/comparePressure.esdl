package components;

static class comparePressure {
	@no_side_effect @generated("blockdiagram")
	public boolean comp(real in d_fl, real in d_fr, real in d_rl, real in d_rr) {
		return(((((d_fl + d_fr + d_rl + d_rr) / 4.0) / min(min(min(d_fl, d_fr), d_rl), d_rr)) >= 1.005) || ((max(max(max(d_fl, d_fr), d_rl), d_rr) / ((d_fl + d_fr + d_rl + d_rr) / 4.0)) >= 1.005)); // Main/comp 1
	}
}