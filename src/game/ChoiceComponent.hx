import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class ChoiceComponent extends ReactComponentOf<ChoiceProps, Void>{
	public function new(props:ChoiceProps){
		super(props);
	}

	override function render(){
		var requirementImages = requirements();
		return jsx('<div className="choice">
			<h2>{props.choice.publicName}</h2>
			<p>{props.choice.description}</p>
		</div>');
	}

	private function requirements(){ //turn into functional react component
		return jsx('<div></div>');
	}
}

typedef ChoiceProps = {
	var choice:Choice;
}