/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.html;

class GamepadList{

	public function new(){
		array = new Array();
	}

	public var length (get, null):Int;

	var array: Array<Gamepad>;

	public function get_length():Int
	{
		return array.length;
	}

	public function item(index:Int):Gamepad {
		return array[index];
	}
}