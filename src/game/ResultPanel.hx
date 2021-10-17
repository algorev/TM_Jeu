import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class ResultPanel extends ReactComponentOf<VarChoiceProp, Void>{
	public function new(props:VarChoiceProp){
		super(props);
	}

	override function render(){
		var info = heading();
		var consequences = sideEffects();
		return jsx('<div id="results">
			{info}
			{consequences}
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
		return jsx('<div id="consequences"></div>');
	}
}

typedef VarChoiceProp = {
	var choice:Choice;
	var variables:Dynamic;
}