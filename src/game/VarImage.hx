import react.ReactMouseEvent;
import js.Browser;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class VarImage extends ReactComponent {
	public function new(props:Dynamic) {
		super(props);
		this.state = {
			showTooltip: false,
			pos: {x: 0, y: 0}
		};
	}

	private function activateTooltip() {
		trace("activating tooltip...");
		this.setState({
			showTooltip: true
		});
	}

	private function deactivateTooltip() {
		trace("deactivating tooltip...");
		this.setState({
			showTooltip: false
		});
	}

	private function moveTooltip(event:ReactMouseEvent) {
		trace("setting pos...");
		this.setState({
			showTooltip: true,
			pos: {x: event.pageX, y: event.pageY}
		});
		trace(this.state.pos);
	}

	override function render() {
		var tooltip = jsx('<div></div>');
		if (this.state.showTooltip) {
			trace("rerendering...");
			trace(this.props);
			tooltip = jsx('<Tooltip text={this.props.desc} pos={this.state.pos}/>');
		} else {
			tooltip = jsx('<div></div>');
		}
		return jsx('<div>
			<img src={this.props.source} onMouseEnter={activateTooltip} onMouseLeave={deactivateTooltip} onMouseMove={moveTooltip} className={this.props.cssClass}/>
			{tooltip}
		</div>');
	}
}
