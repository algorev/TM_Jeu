import Types;
import Reflect;

class RequirementHelper{
	public static function checkRequirements(reqs:Requirements, vars:VariableMutationKit) : CheckedReqs {

		var fulfilled:Array<Variable> = [];
		var unfulfilled:Array<Variable> = [];

		function shouldBe(variableName:String, expected:Bool){
			var variable = Reflect.field(vars.variables, variableName);
			if (variable == null){
				trace("Unknown variable: " + variableName);
			}
			if (variable.value == expected){
				fulfilled.push(variable);
			}
			else {
				unfulfilled.push(variable);
			}
		}

		for (req in reqs.yes) shouldBe(req, true);
		for (req in reqs.no) shouldBe(req, false);

		return {
			fulfilled: fulfilled,
			unfulfilled: unfulfilled
		};
	}

	public static function checkIfSatisfied(requirements:Requirements, variables:VariableMutationKit){
		return (checkRequirements(requirements, variables)).unfulfilled.length == 0;
	}
}

typedef CheckedReqs = {
	var fulfilled:Array<Variable>;
	var unfulfilled:Array<Variable>;
}