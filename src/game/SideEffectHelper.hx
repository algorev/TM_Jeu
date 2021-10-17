import Types;
import Reflect;

class SideEffectHelper{
	public static function computeDiffs(effects:SideEffects, vars:Dynamic){
		var nextVars = Reflect.copy(vars);
		function toEach(names:Array<String>, operation:Bool -> Bool){
			for (name in names){
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
}