import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;
import Reflect;
import Helpers;

class VariablesPanel extends ReactComponent{
	var variableList:Array<Variable>;

	public function new(props:Dynamic){
		super(props);
		var variableList:Array<Variable> = [];
		for (field in Reflect.fields(props.variableStruct)){
			variableList.push(Reflect.getProperty(props.variableStruct, field));
		}
		trace(variableList);
		this.variableList = variableList.filter(variable -> variable.value);
	}

	override function render(){
		var variableElements = this.variableList.map(makeVariableImage);
		return jsx('<div id="inventory">{variableElements}</div>');
	}

	private static function makeVariableImage(variable:Variable) {
		var imageName = Helpers.imagePath(variable.imageName);
		return jsx('<img src={imageName} title={variable.onSet} className="varimage" />');
	}
}