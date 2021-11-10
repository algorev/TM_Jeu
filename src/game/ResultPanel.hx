import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;
using Lambda;

class ResultPanel extends ReactComponentOf<VarChoiceProp, Void>{
	public function new(props:VarChoiceProp){
		super(props);
	}

	override function render(){
		var info = heading();
		var consequences = sideEffects();
		var callback = () -> props.variables.nextRoom(props.choice);
		var button = if (props.choice.next != null){
			jsx('<button onClick={callback} className="enabled">CONTINUER</button>');
		}
		else{
			jsx('<div></div>');
		}
		return jsx('<div id="results">
			{info}
			<div id="consequences">
				{consequences}
				{button}
			</div>
		</div>');
	}

	private function heading(){
		var choiceName = Helpers.unescape(props.choice.publicName);
		var body = Helpers.unescape(props.choice.body);
		return jsx('<div id="roomInfo">
			<h2>{choiceName}</h2>
			<p>{body}</p>
		</div>');
	}

	private function sideEffects(){
		var consequenceComponents = Reflect.fields(SideEffectHelper.computeRippledEffects(this.props.choice.sideeffects, this.props.variables)) //get variable side effects field names
			.map(fieldName -> Reflect.field(this.props.choice.sideeffects, fieldName)) //get a list of lists of variable names from them
			.fold((current, acc) -> acc.concat(current), []) //flatten the list
			.map(varName -> Reflect.field(this.props.variables.variables, varName)) //get variable from name
			.map(sideEffectDesc); //create react component from it
		return consequenceComponents;
	}

	private function sideEffectDesc(variable:Variable){
		var text = if (variable.value) variable.onSet else variable.onUnset;
		var imageName = Helpers.imagePath(variable.imageName);
		return jsx('<div className="consequence">
			<img src={imageName}/>
			<p className="consequenceText">{text}</p>
		</div>');
	}
}

typedef VarChoiceProp = {
	var choice:Choice;
	var variables:Dynamic;
}