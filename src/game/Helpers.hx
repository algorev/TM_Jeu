using StringTools;

class Helpers{
	static function unescapeStoryStr(str:String){
		return str.replace("\\n", "\n").replace("\\\"", "\"");
	}
}