import js.html.Element;
import js.Browser;

class Tabs {
	var current:CurrentTab;

	public function new(){
		current = Inventory;
		var tabswitch = Browser.document.getElementById("tabswitch");
		var tabcontents = Browser.document.getElementById("tabcontents");
		for (elem in tabswitch.children){
			if (elem.id == "journalbutton"){
				elem.onclick = function() {switchTabs(Journal, tabcontents);};
			}
			else if (elem.id == "inventorybutton"){
				elem.onclick = function() {switchTabs(Inventory, tabcontents);};
			}
		}
	}

	private function switchTabs(target:CurrentTab, tabContents:Element){
		for (tab in tabContents.children){
			tab.className = "";
			if (target == Journal && tab.id == "journal"){
				makeActiveTab(tab);
			}
			if (target == Inventory && tab.id == "inventory"){
				makeActiveTab(tab);
			}
		}
	}

	private function makeActiveTab(element:Element) {
		element.className = "currenttab";
	}

	private function makeActiveButton(element:Element) {
		element.className = "activebutton";
	}
}

enum CurrentTab {
	Inventory;
	Journal;
}