import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class StoryPanel extends ReactComponent{
	var stage = RoomStage;

	public function new(props:Dynamic){
		super(props);
	}
	
	override function render(){
		var mainElement = if (this.stage == RoomStage){
			jsx('<RoomPanel room={props.story.rooms.main} />');
		}
		else {
			jsx('<ResultPanel room={props.story.rooms.main.choices[0]} />');
		}
		return jsx('<div id="story">{mainElement}</div>');
	}
}

enum Stage {
	RoomStage;
	ResultStage;
}