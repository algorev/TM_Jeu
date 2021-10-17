using StringTools;

class Helpers{
	public static function unescape(str:String){
		return str; //once this was necessary, then it was useless, now it rests in peace.
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