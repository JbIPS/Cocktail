/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.html;

class DOMMimeTypeArray{

	public function new(){
		array = new Array();
	}

	public var length(get, null): Int;

	var array: Array<DOMMimeType>;

	public function get_length():Int
	{
		return array.length;
	}

	public function item(index:Int):DOMMimeType {
		return array[index];
	}

	public function namedItem(name:String):DOMMimeType {
		return Lambda.find(array, function(domType: DOMMimeType) return domType.type == name);
	}
}