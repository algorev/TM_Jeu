import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;
import Reflect;

class VariablesPanel extends ReactComponent{
	var variableList:Array<Variable>;

	public function new(props:Dynamic){
		super(props);
		for (field in Reflect.fields(props.variableStruct)){
			variableList.push(Reflect.getProperty(props.variableStruct, field));
		}
		variableList = variableList.filter(variable -> variable.value);
	}

	override function render(){
		var thing = "boiii";
		return jsx('<div id="inventory"><h1>VARIABLESPANEL</h1></div>');
	}
}