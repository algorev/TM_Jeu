import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class RoomPanel extends ReactComponentOf<RoomProp, Void>{
	public function new(props:RoomProp){
		super(props);
	}

	override function render(){
		final roomDesc = heading(); //replace this with a functional react component
		final choiceElements = props.room.choices.map(choice -> jsx('<ChoiceComponent choice={choice} />'));
		return jsx('<div id="room">
			{roomDesc}
			<div id="choiceList">
				{choiceElements}
			</div>
		</div>');
	}

	private function heading(){
		return jsx('<div id="roomInfo">
			<h1>{props.room.publicName}</h1>
			<p>{props.room.description}</p>
		</div>');
	}
}

typedef RoomProp = {
	var room:Room;
}