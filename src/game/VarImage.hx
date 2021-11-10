import js.Browser;
import react.React;
import react.ReactMacro.jsx;
import react.ReactComponent;
import Types;

class VarImage extends ReactComponent{

	public function new(props:Dynamic){
		super(props);
		this.state = {
			showTooltip: false
		};
	}

	private function activateTooltip(){
		this.setState({
			showTooltip: true
		});
	}

	private function deactivateTooltip() {
		this.setState({
			showTooltip: false
		});
	}

	private function moveTooltip() {
		
	}

	override function render(){
		var tooltip = jsx('<div></div>');
		if(this.state.showTooltip){
			tooltip = jsx('<Tooltip text={this.props.desc} />');
		}
		else{
			tooltip = jsx('<div></div>');
		}
		return jsx('<div>
			<img src={this.props.source} onMouseEnter={activateTooltip} onMouseLeave={deactivateTooltip} className={this.props.cssClass}/>
			{tooltip}
		</div>');
	}
}
