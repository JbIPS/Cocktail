/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.html;

class PositionError{

	public static var PERMISSION_DENIED:Int;

	public static var POSITION_UNAVAILABLE:Int;

	public static var TIMEOUT:Int;

	public var code:Int;

	public var message:String;
}