/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.html;

class DOMPlugin{

	public function new(){
		array = new Array();
	}

	/**
	* A human readable description of the plugin. Read only.
	**/
	public var description (default, null): String;

	/**
	* The filename of the plugin file. Read only.
	**/
	public var filename (default, null): String;

	public var length (get, null): Int;

	/**
	* The name of the plugin. Read only.
	**/
	public var name (default, null): String;

	var array: Array<DOMMimeType>;

	public function get_length():Int
	{
		return array.length;
	}

	function item(index:Int): DOMMimeType {
		return array[index];
	}

	function namedItem(name:String): DOMMimeType {
		return Lambda.find(array, function(domType: DOMMimeType) return domType.type == name);
	}
}