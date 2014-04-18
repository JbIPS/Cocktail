package cocktail.core.html;

/**
* Represents a rectangular box. The type of box is specified by the method that returns such an object.
* It is returned by functions like element.getBoundingClientRect.
**/
typedef ClientRect = {
	/**
	* Y-coordinate, relative to the viewport origin, of the bottom of the rectangle box. Read only.
	**/
	var bottom: Float;

	/**
	* Height of the rectangle box (This is identical to bottom minus top). Read only.
	**/
	var height:Float;

	/**
	* X-coordinate, relative to the viewport origin, of the left of the rectangle box. Read only.
	**/
	var left:Float;

	/**
	* X-coordinate, relative to the viewport origin, of the right of the rectangle box. Read only.
	**/
	var right:Float;

	/**
	* Y-coordinate, relative to the viewport origin, of the top of the rectangle box. Read only.
	**/
	var top:Float;

	/**
	* Width of the rectangle box (This is identical to right minus left). Read only.
	**/
	var width:Float;
}