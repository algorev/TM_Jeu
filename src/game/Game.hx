import js.html.Document;
import react.React;
import react.ReactMacro.jsx;
import react.ReactDOM;
import react.ReactComponent;
import js.Browser;
import Types;
import VariablesPanel;

class Game extends ReactComponentOf<Dynamic, ProgressData> {
	static function main() {
		var storyData:Story = haxe.Json.parse(haxe.Resource.getString("storyText"));
		ReactDOM.render(jsx('<Game story={storyData} />'), Browser.document.getElementById("container"));
	}

	public function new(props:Dynamic) {
		super(props);
		this.state = {
			current: RoomView(props.story.rooms.main),
			story: this.props.story
		}
	}

	override function render() {
		var varkit:VariableMutationKit = {
			variables: this.state.story.variables,
			nextRoom: nextRoom,
			chooseChoice: chooseChoice
		}
		return jsx('<div className="container">
			<StoryPanel story={this.state.story} variables={varkit} progress={this.state.current}/>
			<VariablesPanel variableStruct={varkit.variables} />
		</div>');
	}

	function nextRoom(choice:Choice) {
		this.setState({
			current: RoomView(Reflect.field(this.state.story.rooms, choice.next)),
			story: this.state.story
		});
	}

	function chooseChoice(choice:Choice){
		var newVariables = SideEffectHelper.computeDiffs(choice.sideeffects, this.state.story.variables);
		//trace(Reflect.fields(newVariables));
		this.setState({
			current: ChoiceView(choice),
			story: {
				rooms: this.state.story.rooms,
				variables: newVariables
			}
		});
	}
}

typedef ProgressData = {
	var current:CurrentView;
	var story:Story;
}