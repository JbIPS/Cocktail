/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.html;

typedef BatteryManager = {
	var charging: Bool;

	var chargingTime: Float;

	var dischargingTime: Float;

	var level: Float;

	var onchargingchange: EventListener;

	var onchargingtimechange: EventListener;

	var ondischargingtimechange: EventListener;

	var onlevelchange: EventListener;
}