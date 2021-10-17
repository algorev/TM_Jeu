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
		return jsx('<div id="results">
			{info}
			<div id="consequences">
				{consequences}
				<button onClick={callback} className="enabled">CONTINUER</button>
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
		var consequenceComponents = Reflect.fields(this.props.choice.sideeffects)
			.map(fieldName -> Reflect.field(this.props.choice.sideeffects, fieldName))
			.fold((current, acc) -> acc.concat(current), []) //flatten
			.map(varName -> Reflect.field(this.props.variables.variables, varName))
			.map(sideEffectDesc);
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