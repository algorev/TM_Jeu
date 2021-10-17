import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class RoomPanel extends ReactComponentOf<VarRoomProp, Void>{
	public function new(props:VarRoomProp){
		super(props);
	}

	override function render(){
		final roomDesc = heading();
		final choiceElements = props.room.choices.map(choice -> jsx('<ChoiceComponent choice={choice} variables={props.variables} />'));
		return jsx('<div id="room">
			{roomDesc}
			<div id="choiceList">
				{choiceElements}
			</div>
		</div>');
	}

	private function heading(){
		var publicName = Helpers.unescape(props.room.publicName);
		var description = Helpers.unescape(props.room.description);
		return jsx('<div id="roomInfo">
			<h1>{publicName}</h1>
			<p>{description}</p>
		</div>');
	}
}