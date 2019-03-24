package components;
@generated("statemachine")
type warningFunctionStatemachineStates is enum {
	shortState,
	breakState,
	longState,
	mockState
};

class warningFunction {
	boolean on;
	integer counter;
	@set
	private real dt_;
	real restTime;

	@generated("statemachine")
	public void warningFunctionStatemachineTrigger() triggers warningFunctionStatemachine;

	@generatedStateMachine
	statemachine warningFunctionStatemachine using warningFunctionStatemachineStates {
		start shortState;

		state shortState {
			entry {
				restTime = 0.8;
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
				restTime = 0.1;
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
				restTime = 1.6;
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
		}
	}
}