package core.html;
import core.nativeElement.NativeElementManager;
import cocktail.viewport.Viewport;
import cocktailCore.focus.FocusManager;
import core.BodyStyle;

#if (flash9 || cpp || nme)
import port.flash_player.HTMLElement;

#elseif js
import port.browser.HTMLElement;

#end

/**
 * The HTML document body. This element is always present
 * in the DOM API, even if the tags are not present in the source document.
 * 
 * @author Yannick DOMINGUEZ
 */
class HTMLBodyElement extends HTMLElement
{
	/**
	 * A reference to the view port used to listen for
	 * resize events
	 * 
	 * TODO : move to the Document ?
	 */
	private var _viewPort:Viewport;
	
	/**
	 * class constructor. Retrieve the root of the
	 * runtime and set it as this DOMElement's
	 * NativeElement
	 * 
	 * TODO : init keyboard with document in JS ?
	 */
	public function new() 
	{	
		super();
	}
	
	override private function initNativeElement():Void
	{
		_nativeElement = NativeElementManager.getRoot();
	}
	
	/**
	 * Instantiate a Style specific to this
	 * DOMElement
	 */
	override private function initStyle():Void
	{
		_style = new BodyStyle(this);
		
		//instantiate the view port and listen
		//for resize on it
		_viewPort = new Viewport();
		_viewPort.onResize = onViewPortResize;
	}
	
	/**
	 * Overriden to set this as the reference
	 * to the BodyDOMElement of the focus manager,
	 * used to build the tab list tree
	 */
	override private function initFocus():Void
	{
		FocusManager.getInstance().bodyElement = cast(this);
		super.initFocus();
	}
	
	/**
	 * When the view port is resized, insvalidate
	 * this BodyDOMElement to lay it out with
	 * the new view port dimensions
	 */
	private function onViewPortResize():Void
	{
		_style.invalidate();
	}
	
	
}