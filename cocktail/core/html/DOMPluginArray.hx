/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.html;

class DOMPluginArray{

	public function new(){
		array = new Array();
	}

	public var length (get, null): Int;

	var array: Array<DOMPlugin>;

	public function get_length():Int
	{
		return array.length;
	}

	public function item(index:Int):DOMPlugin {
		return array[index];
	}

	public function namedItem(name:String):DOMPlugin {
		return Lambda.find(array, function(plugin: DOMPlugin) return plugin.name == name);
	}

	public function refresh(reload:Bool):Void {

	}
}