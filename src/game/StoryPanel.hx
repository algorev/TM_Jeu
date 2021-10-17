import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class StoryPanel extends ReactComponent{

	public function new(props:Dynamic){
		super(props);
		this.state = this.props.progress;
	}

	override function componentDidUpdate(prevProps:Dynamic) {
		if (prevProps != this.props) {
			this.setState(this.props.progress);
		}
	}
	
	override function render(){
		var mainElement = switch (this.state){
			case RoomView(room):
				jsx('<RoomPanel room={room} variables={props.variables} />');
			case ChoiceView(choice):
				jsx('<ResultPanel choice={choice} variables={props.variables} />');
		}
		return jsx('<div id="story">{mainElement}</div>');
	}
}
