package components;

class warning {
	warningFunction warningFunction_instance;
	boolean sound;
	boolean lamp;

	@generated("blockdiagram")
	public void warn(boolean in drop, real in dT_) {
		if (drop) {
			warningFunction_instance.warningFunctionStatemachineTrigger(); // Main/warn 1/if-then 1
		} // Main/warn 1
		warningFunction_instance.dt_ = dT_; // Main/warn 2
		sound = warningFunction_instance.on; // Main/warn 3
		lamp = drop; // Main/warn 4
	}
}