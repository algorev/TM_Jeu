import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class ResultPanel extends ReactComponent{
	public function new(props:Dynamic){
		super(props);
	}

	override function render(){
		return jsx('<div id="results"></div>');
	}
}