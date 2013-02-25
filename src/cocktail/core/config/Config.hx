/*
 * Cocktail, HTML rendering engine
 * http://haxe.org/com/libs/cocktail
 *
 * Copyright (c) Silex Labs
 * Cocktail is available under the MIT license
 * http://www.silexlabs.org/labs/cocktail-licensing/
*/
package cocktail.core.config;

/**
 * This class exposes global configuration parameters
 * used throughout cocktail.
 * 
 * All those parameters have a default value.
 * This default value can be overriden using a <meta>
 * tag, added in the head element of the document.
 * 
 * For instance, if you want to override the value
 * of the "enableMouseEvent" attribute to set it to false,
 * add the following meta tag to the document : 
	 * <meta name="enableMouseEvent" value="false></meta>
 * 
 * TODO 4 : for now implemented as singleton for simplicity,
 * if multiple document needed however, will need to be implemented
 * as a document instance
 * 
 * @author Yannick Dominguez 
 */
class Config 
{
	/**
	 * Disable listening to the platform mouse event. This is
	 * mainly useful on mobile platform where touch events
	 * are preferred. If false, Mouse event won't be listened to and dispatch
	 * anymore however a quick touch tap will still synthesize
	 * a "click" mouse event
	 */
	public var enableMouseEvent(default, null):Bool = true;
	
	/**
	 * The distance in pixel that a touch on screen has to move to 
	 * prevent dispatching a click event on next touch up. 
	 * 
	 * If the touch moves more than this distance, then it is assumed
	 * that the user don't want to click but instead is scrolling 
	 * or drag'n'dropping an element
	 */ 
	public var touchMovePreventClickDistance(default, null):Int = 10;
	
	/**
	 * When drawing bitmap, determine if smoothing should be applied
	 * to it when it not displayed at 100% of its size. This improves
	 * the rendering of the bitmap but decreases performances.
	 */
	public var enableBitmapSmoothing(default, null):Bool = true;
	
	/**
	 * Flash specific.
	 * 
	 * Use a low stage quality to slightly improve performance, however
	 * it degrades visual rendering. If the application is mostly bitmap
	 * based, it doesn't make much difference in the rendering
	 */
	public var useLowStageQuality(default, null):Bool = false;
	
	/**
	 * The document might be updated immediately instead of waiting
	 * for next update on some conditions. For instance, getting
	 * the offsetWidth or offsetTop of an HTMLElement requires the document
	 * to be up to date.
	 * 
	 * It can be deactivated for improved performance, but some properties
	 * might return not up to date value. If you deactivatye it avoid setting
	 * styles and immediately requesting the size or position of an element, set
	 * a timer instead
	 */
	public var enableSynchronousUpdate(default, null):Bool = true;
	
	/**
	 * Flash specific.
	 * 
	 * When true, if there are html elements displayed on top of a swf
	 * loaded with an object tag, the html elements can be interacted with.
	 * 
	 * If false, the swf movie will receive all the mouse and touch event and
	 * will prevent cocktail from receiving them
	 * 
	 * You can disable it for a small performance boost in the cases where
	 * you either don't have any swf movie in your document or if there is
	 * no interactive content on top of those swf movie
	 */
	public var useAdvancedHitTesting(default, null):Bool = true;
	
	/**
	 * Flash specific.
	 * 
	 * When true use flash StageVideo API introduce in flash player 10.2
	 * which allows hardware rendering of video for reduced cpu usage.
	 * If falls back to software rendering if hardware do not permit it.
	 * 
	 * It comes with some limitations, the main one being that the video
	 * is always behind the flash display list
	 * 
	 * Set to false if you want to always use software video in flash
	 */
	public var useStageVideoIfAvailable(default, null):Bool = true;
	
	/////////////////////////////////////////////////
	// FONT CONFIG
	/////////////////////////////////////////////////
	
	/**
	 * This is the name of the font used by default for an element
	 * when no other font is given
	 */
	public var defaultFont(default, null):String = "serif";
	
	/**
	 * The default color to use to render text when no other
	 * value is given for an element, as an hex value
	 */
	public var defaultFontColor(default, null):String = "#000000";
	
	/**
	 * The actual font size when the 'xx-small' font size is
	 * used for an element
	 */
	public var xxSmallFontSize(default, null):Int = 9;
	
	/**
	 * same as above for x-small
	 */
	public var xSmallFontSize(default, null):Int = 10;
	
	/**
	 * same as above for small
	 */
	public var smallFontSize(default, null):Int = 13;
	
	/**
	 * same as above for medium
	 */
	public var mediumFontSize(default, null):Int = 16;
	
	/**
	 * same as above for large
	 */
	public var largeFontSize(default, null):Int = 18;
	
	/**
	 * same as above for x-large
	 */
	public var xLargeFontSize(default, null):Int = 24;
	
	/**
	 * same as above for xx-large
	 */
	public var xxLargeFontSize(default, null):Int = 32;
	
	/////////////////////////////////////////////////
	// COMPOSITING CONFIG
	/////////////////////////////////////////////////
	
	/**
	 * Enable or disable compositing. Compositing is used
	 * for elements which require their own rendering surface, to respect z-order of the document.
	 * For instance, a video, a text input or a swf object in flash
	 * needs their own native surface, for instance a Sprite in flash.
	 * 
	 * You can disable it to improve performance by avoiding creating
	 * too many bitmap surface and/or native element, however element
	 * which would be otherwise composited will now always be on top
	 * of the rendered text and picture
	 */
	public var enableCompositing(default, null):Bool = false;
	
	/**
	 * This parameter only applies if ENABLE_COMPOSITING is false.
	 * 
	 * If false, plugin loaded with <object> tag, such as flash movies
	 * are displayed on top of cocktail's bitmap. Else, those plugin
	 * are below cocktail's bitmap and they can be seen if cocktail's bitmap
	 * is transparent where the plugin appears.
	 */
	public var objectBelowWhenNoCompositing(default, null):Bool = true;
	
	/**
	 * Same as OBJECT_BELOW_WHEN_NO_COMPOSITING, 
	 * but applies to video created with <Video> tag
	 */
	public var videoBelowWhenNoCompositing(default, null):Bool = true;
	
	/**
	 * instance for singleton
	 */
	private static var _instance:Config;
	
	/**
	 * implemented as a singleton
	 */
	private function new() 
	{
		
	}
	
	/**
	 * singleton
	 */ 
	public static function getInstance():Config
	{
		if (_instance == null)
		{
			_instance = new Config();
		}
		
		return _instance;
	}
	
}