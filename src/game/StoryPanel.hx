import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class StoryPanel extends ReactComponent{
	public function new(props:Dynamic){
		super(props);
	}
	
	override function render(){
		return jsx('<div id="story"><h1>STORYPANEL</h1></div>');
	}
}