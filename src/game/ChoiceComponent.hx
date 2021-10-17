import SideEffectHelper;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;
import RequirementHelper;

class ChoiceComponent extends ReactComponentOf<VarChoiceProps, Void>{
	public function new(props:VarChoiceProps){
		super(props);
	}

	override function render(){
		if (props.choice.visible || RequirementHelper.checkIfSatisfied(props.choice.requirements, props.variables)){
		var requirementImages = requirements();
		var publicName = Helpers.unescape(props.choice.publicName);
		var description = Helpers.unescape(props.choice.description);
		var buttonComponent = button();
		return jsx('<div className="choice">
			<h2>{publicName}</h2>
			<p>{description}</p>
			<div className="requirements">
				{requirementImages}
				{buttonComponent}
			</div>
		</div>');
		}
		return null;
	}

	private function requirements(){ //turn into functional react component
		var processedRequirements = RequirementHelper.checkRequirements(props.choice.requirements, props.variables);
		var images = [for (variable in processedRequirements.fulfilled) requirementImage(variable, true)];
		images = images.concat([for (variable in processedRequirements.unfulfilled) requirementImage(variable, false)]);
		return images;
	}

	private function requirementImage(variable:Variable, fulfilled:Bool) {
		var classNames = "requirement " + (if (fulfilled) "fulfilled" else "unfulfilled");
		var imgName = Helpers.imagePath(variable.imageName);
		var title = if (variable.value) variable.onSet else variable.onUnset;
		return jsx('<img className={classNames} src={imgName} title={title}/>');
	}

	private function button(){
		var className:String;
		var callback = () -> props.variables.chooseChoice(this.props.choice);
		if (RequirementHelper.checkIfSatisfied(props.choice.requirements, props.variables)){
			className = "enabled";
			return jsx('<button className={className} onClick={callback}>CHOISIR</button>');
		}
		else {
			className = "disabled";
			return jsx('<button className={className}>CHOISIR</button>');
		}
	}
}



typedef VarChoiceProps = {
	var variables:VariableMutationKit;
	var choice:Choice;
}