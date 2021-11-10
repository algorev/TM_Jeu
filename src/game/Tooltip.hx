import js.Browser;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class Tooltip extends ReactComponent{

	public function new(props:Dynamic){
		super(props);
		this.state = Browser.document.getElementById("tooltip");
	}

	override function componentDidUpdate(prevProps:Dynamic) {
		if (prevProps != this.props) {
			this.state.style.top = 10;
		}
	}
	
	override function render(){
		return jsx('<div id="tooltip"><p>{props.text}</p></div>');
	}
}
