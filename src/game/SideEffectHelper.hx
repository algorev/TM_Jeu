import Types;
import Reflect;

class SideEffectHelper{
	public static function computeDiffs(effects:SideEffects, vars:VariableMutationKit){
		var nextVars = Reflect.copy(vars.variables);
		function toEach(names:Array<String>, operation:Bool -> Bool){
			for (name in names){
				var newVariable = Reflect.copy(Reflect.field(vars.variables, name));
				newVariable.value = operation(newVariable.value);
				Reflect.setField(nextVars, name, newVariable);
			}
		}
		toEach(effects.set, _ -> true);
		toEach(effects.unset, _ -> false);
		toEach(effects.flip, val -> !val);
		return nextVars;
	}
}