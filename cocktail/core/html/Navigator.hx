/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.html;

/**
* Navigator object, which can be queried for information about the application running the script.
**/
import cocktail.core.html.rtc.NavigatorUserMediaErrorCallback;
import cocktail.core.html.rtc.NavigatorUserMediaSuccessCallback;
import cocktail.html.Geolocation;
import cocktail.html.BatteryManager;

class Navigator{

	public function new(){

	}

	/**
	* Returns the internal "code" name of the current browser. Do not rely on this property to return the correct value.
	**/
	public var appCodeName: String;

	/**
	* Returns the official name of the browser. Do not rely on this property to return the correct value.
	**/
	public var appName: String;

	/**
	* Returns the version of the browser as a string. Do not rely on this property to return the correct value.
	**/
	public var appVersion: String;

	/**
	*
	**/
	public var battery: BatteryManager;

	/**
	* Returns a boolean indicating whether cookies are enabled in the browser or not.
	**/
	public var cookieEnabled: Bool;

	/**
	*
	**/
	public var geolocation: Geolocation;

	/**
	* Returns a string representing the language version of the browser.
	**/
	public var language: String;

	/**
	* Returns a list of the MIME types supported by the browser.
	**/
	public var mimeTypes: DOMMimeTypeArray;

	/**
	* Returns a boolean indicating whether the browser is working online.
	**/
	public var onLine: Bool;

	/**
	* Returns a string representing the platform of the browser.
	**/
	public var platform: String;

	/**
	* Returns an array of the plugins installed in the browser.
	**/
	public var plugins: DOMPluginArray;

	/**
	* Returns the product name of the current browser. (e.g. "Gecko")
	**/
	public var product: String;

	/**
	* Returns the build number of the current browser (e.g. "20060909")
	**/
	public var productSub: String;

	/**
	* Returns the user agent string for the current browser.
	**/
	public var userAgent: String;

	/**
	* Returns the vendor name of the current browser (e.g. "Netscape6")
	**/
	public var vendor: String;

	/**
	* Returns the vendor version number (e.g. "6.1")
	**/
	public var vendorSub: String;

	public function getGamepads():GamepadList {
		return new GamepadList();
	}

	public function getStorageUpdates():Void {

	}

	public function getUserMedia(options:Dynamic, successCallback:NavigatorUserMediaSuccessCallback, ?errorCallback:NavigatorUserMediaErrorCallback):Void {

	}

	public function javaEnabled():Bool {
		return false;
	}
}