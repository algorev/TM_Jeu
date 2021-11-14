import js.html.MouseEvent;
import js.html.Element;
import react.ReactMouseEvent;
import js.Browser;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class VarImage extends ReactComponent {
	var viewportDimensions = {
		x: 0,
		y: 0
	};
	var current:Element;

	public function new(props:Dynamic) {
		super(props);
		this.state = {
			showTooltip: false,
			pos: {x: 0, y: 0}
		};
		var body = Browser.document.getElementsByTagName("body")[0];
		viewportDimensions = {
			x: body.clientWidth + 16,
			y: body.clientHeight + 16
		};
		current = body;
	}

	private function activateTooltip() {
		this.setState({
			showTooltip: true
		});
	}

	private function deactivateTooltip() {
		this.setState({
			showTooltip: false
		});
	}

	private function moveTooltip(event:ReactMouseEvent) {
		if (current == null || event.pageX > current.getBoundingClientRect().left) {
			this.setState({
				showTooltip: true,
				pos: {x: event.pageX, y: event.pageY}
			});
		} else {
			this.setState({
				showTooltip: false
			});
		}
	}

	override function render() {
		var tooltip = jsx('<div></div>');
		var youAreTheOne = "";
		if (this.state.showTooltip) {
			tooltip = jsx('<Tooltip text={this.props.desc} pos={this.state.pos}/>');
			youAreTheOne = "currentHovered";
			current = Browser.document.getElementById("currentHovered");
		} else {
			tooltip = jsx('<div></div>');
		}
		return jsx('<div onMouseEnter={activateTooltip} onMouseLeave={deactivateTooltip} onMouseMove={moveTooltip} id={youAreTheOne}>
			<img src={this.props.source} className={this.props.cssClass}/>
			{tooltip}
		</div>');
	}
}
