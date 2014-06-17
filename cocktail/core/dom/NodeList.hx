/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.dom;
/**
 * TODO : for now NodeList is an array but it can
 * also be implemented using an abstract type which
 * enables operator overloading. This way it could
 * both be accessed as an array and have the
 * standard item() method
 */
class NodeList implements ArrayAccess<Node>{

	/**
	* Reflects the number of elements in the NodeList.
	**/
	public var length (get, null):Int;

	var array: Array<Node>;

	public function new():Void {
		array = new Array();
	}

	public function get_length():Int
	{
		return array.length;
	}

	public function item(index:Int):Node
	{
		return array[index];
	}

	public function remove(item:Node):Void
	{
		array.remove(item);
	}

	public function push(item:Node):Void
	{
		array.push(item);
	}

	public function insert(position: Int, item:Node):Void
	{
		array.insert(position, item);
	}
}