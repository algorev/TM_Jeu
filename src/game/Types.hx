class Types {}

typedef Story = {
	var variables:Dynamic;
	var rooms:Dynamic;
}

typedef Variable = {
	var imageName:String;
	var onSet:String;
	var onUnset:String;
	var value:Bool;
}

typedef Room = {
	var publicName:String;
	var description:String;
	var choices:Array<Choice>;
}

typedef Choice = {
	var publicName:String;
	var description:String;
	var body:String;
	var imageName:Null<String>;
	var visible:Bool;
	var next:Null<String>;
	var requirements:Requirements;
	var sideeffects:SideEffects;
}

typedef Requirements = {
	var yes:Array<String>;
	var no:Array<String>;
}

typedef SideEffects = {
	var set:Array<String>;
	var unset:Array<String>;
	var flip:Array<String>;
}

typedef VarRoomProp = {
	var room:Room;
	var variables:VariableMutationKit;
}

typedef VariableMutationKit = {
	var variables:Dynamic;
	var updateVariables:(newVariables:Dynamic) -> Void;
}