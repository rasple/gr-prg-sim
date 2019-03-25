package components;
@generated("statemachine")
type warningFunctionStatemachineStates is enum {
	shortState,
	breakState,
	longState,
	mockState
};

class warningFunction {
	@get
	private boolean on = false;
	integer counter = 0;
	@set
	private real dt_;
	real restTime;
	real base_rate = 0.8;
	real break_rate = 0.1;

	@generated("statemachine")
	public void warningFunctionStatemachineTrigger() triggers warningFunctionStatemachine;

	@generatedStateMachine
	statemachine warningFunctionStatemachine using warningFunctionStatemachineStates {
		start shortState;

		state shortState {
			entry {
				restTime = base_rate;
				on = true;
			}
			static {
				restTime -= dt_;
			}
			exit {
				counter += 1;
			}
			transition restTime < 0.0 to breakState;
		}

		state breakState {
			entry {
				restTime = break_rate;
				on = false;
			}
			static {
				restTime -= dt_;
			}
			transition restTime < 0.0 && (counter < 3 || counter > 5) to shortState;
			transition restTime < 0.0 && counter < 6 && counter > 2 to longState;
			transition counter == 9 to mockState;
		}

		state longState {
			entry {
				restTime = base_rate * 2.0;
				on = true;
			}
			static {
				restTime -= dt_;
			}
			exit {
				counter += 1;
			}
			transition restTime < 0.0 to breakState;
		}

		state mockState {
			entry {
				counter = 0;
				restTime = break_rate;
			}
			static {
				restTime -= dt_;
			}
			transition restTime < 0.0 to shortState;
		}
	}
}