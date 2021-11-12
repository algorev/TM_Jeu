import js.Browser;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class Tooltip extends ReactComponent{

	var viewportDimensions = {
		x: 0,
		y: 0
	};

	public function new(props:Dynamic){
		super(props);
		this.state = null;
		var body = Browser.document.getElementsByTagName("body")[0];
		viewportDimensions = {
			x: body.clientWidth,
			y: body.clientHeight
		};
	}

	override function componentDidUpdate(prevProps:Dynamic) {
		if (prevProps != this.props) {
			this.state = Browser.document.getElementById("tooltip");
			this.state.style.top = (this.props.pos.y).toString() + "px";
			this.state.style.right = Std.string(viewportDimensions.x - this.props.pos.x) + "px";
		}
	}
	
	override function render(){
		return jsx('<div id="tooltip"><p>{props.text}</p></div>');
	}
}
