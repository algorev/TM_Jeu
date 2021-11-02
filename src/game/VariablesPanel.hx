import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;
import Reflect;
import Helpers;

class VariablesPanel extends ReactComponentOf<VarProp, VarProp>{
	public function new(props:VarProp){
		super(props);
		this.state = {
			variableStruct: getVariableList()
		};
	}

	override function componentDidUpdate(prevProps) {
		if (this.props != prevProps) {
			this.setState({
				variableStruct: getVariableList()
			});
		}
	}

	override function render(){
		var variableElements = this.state.variableStruct.map(makeVariableImage);
		return jsx('<div id="inventory">{variableElements}</div>');
	}

	function getVariableList(){
		function shouldVariableBeShown(variable:Variable){
			var fakeMutationKit:VariableMutationKit = RequirementHelper.fakeVarKit(this.props.variableStruct);
			return RequirementHelper.checkIfSatisfied(variable.showIf, fakeMutationKit);
		}
		var variableList:Array<Variable> = [];
		for (field in Reflect.fields(props.variableStruct)){
			variableList.push(Reflect.getProperty(props.variableStruct, field));
		}
		return variableList
				.filter(variable -> variable.value)
				.filter(shouldVariableBeShown);
	}

	private static function makeVariableImage(variable:Variable) {
		var imageName = Helpers.imagePath(variable.imageName);
		return jsx('<img src={imageName} title={variable.onSet} className="varimage" />');
	}
}

typedef VarProp = {
	var variableStruct:Dynamic;
}