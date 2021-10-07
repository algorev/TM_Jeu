import js.html.Document;
import react.React;
import react.ReactMacro.jsx;
import react.ReactDOM;
import react.ReactComponent;
import js.Browser;
import Types;
import VariablesPanel;

class Game extends ReactComponent{
	static function main(){
		var storyData:Story = haxe.Json.parse(haxe.Resource.getString("storyText"));
		ReactDOM.render(jsx('<Game story={storyData} />'),
						Browser.document.getElementById("container"));
	}

	public function new(props:Dynamic) {
		super(props);
	}

	override function render(){
		return jsx('<div class="container">
		<StoryPanel story={props.story} />
		<VariablesPanel variableStruct={props.story.variables} />
					</div>');
	}
}