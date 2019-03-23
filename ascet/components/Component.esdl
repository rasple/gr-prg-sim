package components;

static class Component {
	warningFunction warningFunction_instance;
	public boolean change = false;
	public characteristic boolean c = false;

	@generated("blockdiagram")
	@thread
	public void calc() {
		if (c) {
			warningFunction_instance.warningFunctionStatemachineTrigger(); // Main/calc 1/if-then 1
		} // Main/calc 1
		warningFunction_instance.dt_ = DeltaTimeService.deltaT; // Main/calc 2
	}
}