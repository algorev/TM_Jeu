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
		var publicName = Helpers.unescape(props.choice.publicName);
		var description = Helpers.unescape(props.choice.description);
		return jsx('<div className="choice">
			<h2>{publicName}</h2>
			<p>{description}</p>
		</div>');
	}

	private function requirements(){ //turn into functional react component
		return jsx('<div></div>');
	}
}

typedef ChoiceProps = {
	var choice:Choice;
}