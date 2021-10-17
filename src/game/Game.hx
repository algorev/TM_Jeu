import js.html.Document;
import react.React;
import react.ReactMacro.jsx;
import react.ReactDOM;
import react.ReactComponent;
import js.Browser;
import Types;
import VariablesPanel;

class Game extends ReactComponentOf<Dynamic, Story> {
	static function main() {
		var storyData:Story = haxe.Json.parse(haxe.Resource.getString("storyText"));
		ReactDOM.render(jsx('<Game story={storyData} />'), Browser.document.getElementById("container"));
	}

	public function new(props:Dynamic) {
		super(props);
		this.state = this.props.story;
	}

	override function render() {
		var varkit:VariableMutationKit = {
			variables: this.state.variables,
			updateVariables: updateVariables
		}
		trace("Rendered!");
		trace(varkit);
		trace("Oi!");
		return jsx('<div className="container">
			<StoryPanel story={this.state} variables={varkit} />
			<VariablesPanel variableStruct={varkit.variables} />
		</div>');
	}

	function updateVariables(newVariables:Dynamic) {
		this.setState({
			rooms: this.state.rooms,
			variables: newVariables
		});
	}
}
