package cocktail.core.html;

using Lambda;

/**
* This type represents a set of space-separated tokens
**/
class DOMTokenList{

	public function new(){
		tokenArray = new Array<String>();
	}

	/**
	* Length of the list. (Read-only)
	**/
	public var length (default, null):Int;

	var tokenArray: Array<String>;

	/**
	* adds token to the underlying string
	**/
	public function add(tokens:String):Void {
		tokenArray.push(tokens);
	}

	/**
	* return true if the underlying string contains token, otherwise false
	**/
	public function contains(token:String):Bool {
		return tokenArray.has(token);
	}

	/**
	* returns an item in the list by its index
	**/
	public function item(index:Int):String {
		return tokenArray[index];
	}

	/**
	* remove token from the underlying string
	**/
	public function remove(tokens:String):Void {
		tokenArray.remove(tokens);
	}

	public function toString():String {
		return tokenArray.join(" ");
	}

	/**
	* removes token from string and returns false. If token doesn't exist it's added and the function returns true
	* // TODO I don't know what force param do
	**/
	public function toggle(token:String, ?force:Bool):Bool {
		if(tokenArray.remove(token))
			return false;
		else{
			add(token);
			return true;
		}

	}
}