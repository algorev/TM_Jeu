import Types;
import Reflect;

class SideEffectHelper {
	public static function computeDiffsOnce(effects:SideEffects, vars:Dynamic) {
		var nextVars = Reflect.copy(vars);
		function toEach(names:Array<String>, operation:Bool->Bool) {
			for (name in names) {
				trace("Setting var: " + name);
				var newVariable = Reflect.copy(Reflect.field(vars, name));
				newVariable.value = operation(newVariable.value);
				Reflect.setField(nextVars, name, newVariable);
			}
		}
		toEach(effects.set, _ -> true);
		toEach(effects.unset, _ -> false);
		toEach(effects.flip, val -> !val);
		return nextVars;
	}

	public static function computeDiffs(effects:SideEffects, vars:Dynamic) {
		var nextDiffs:SideEffects = {
			set: [],
			unset: [],
			flip: []
		}
		var newVariables = computeDiffsOnce(effects, vars);
		do {
			nextDiffs.unset = Reflect.fields(newVariables)
				.filter(variable -> (Reflect.field(newVariables,
					variable)).value == true) // variables should be set in the first place if we want to unset them
				.filter(variable -> (Reflect.field(newVariables,
					variable)).removeIf != null) // there SHOULD be a #removeIf or else we're targeting the wrong things
				.filter(variable -> RequirementHelper.checkIfSatisfied( // remove variables if their #removeIfs are satisfied
					(Reflect.field(newVariables, variable)).removeIf, RequirementHelper.fakeVarKit(newVariables)));
			newVariables = SideEffectHelper.computeDiffsOnce(nextDiffs, newVariables);
		} while (nextDiffs.unset.length != 0);
		return newVariables;
	}

	public static function computeRippledEffects(effects:SideEffects, vars:Dynamic) {
		/*function concatNoDups(baseArray:Array<String>, appendedArray:Array<String>){
			for (elem in appendedArray){
				if (!baseArray.contains(elem)){
					baseArray.push(elem);
				}
			}
			return baseArray;
		}
		var endDiffs:SideEffects = Reflect.copy(effects);
		var nextDiffs:SideEffects = {
			set: [],
			unset: [],
			flip: []
		}
		var prevLength = 0;
		trace(effects);
		var newVariables = computeDiffsOnce(effects, vars);
		do {
			trace(nextDiffs);
			prevLength = nextDiffs.unset.length;
			nextDiffs.unset = Reflect.fields(newVariables)
				.filter(variable -> (Reflect.field(newVariables,
					variable)).value == true) // variables should be set in the first place if we want to unset them
				.filter(variable -> (Reflect.field(newVariables,
					variable)).removeIf != null) // there SHOULD be a #removeIf or sels we're targeting the wrong things
				.filter(variable -> RequirementHelper.checkIfSatisfied( // remove variables if their #removeIfs are satisfied
					(Reflect.field(newVariables, variable)).removeIf, RequirementHelper.fakeVarKit(newVariables)));
			newVariables = SideEffectHelper.computeDiffsOnce(nextDiffs, newVariables);
			trace(newVariables);
		} while (nextDiffs.unset.length != prevLength);
		return nextDiffs;*/
		//TODO: MAKE IT WORK
		return effects;
	}
}
