using StringTools;

class Helpers{
	public static function unescape(str:String){
		return str.replace("\\n", "\n").replace("\\\"", "\"");
	}

	public static function imagePath(name:Null<String>){
		if (name == null){
			return "assets/empty.svg";
		}
		else {
			return ("assets/" + name + ".svg");
		}
	}
}