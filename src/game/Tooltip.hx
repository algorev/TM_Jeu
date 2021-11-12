import js.Browser;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class Tooltip extends ReactComponent{

	public function new(props:Dynamic){
		super(props);
		this.state = null;
	}

	override function componentDidUpdate(prevProps:Dynamic) {
		if (prevProps != this.props) {
			this.state = Browser.document.getElementById("tooltip");
			this.state.style.top = (this.props.pos.y + 2).toString() + "px";
			this.state.style.left = (this.props.pos.x + 2).toString() + "px";
		}
	}
	
	override function render(){
		return jsx('<div id="tooltip"><p>{props.text}</p></div>');
	}
}
