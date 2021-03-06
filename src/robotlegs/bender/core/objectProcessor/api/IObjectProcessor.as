//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.core.objectProcessor.api
{
	import org.hamcrest.Matcher;

	/**
	 * Object Processor contract
	 */
	public interface IObjectProcessor extends Matcher
	{
		/**
		 * Add an object to be processed.
		 * @param object The object instance to process.
		 * @param callback The completion callback function.
		 */
		function addObject(object:Object, callback:Function = null):void;

		/**
		 * Add a handler to process objects that match a given matcher.
		 * @param matcher The matcher
		 * @param handler The handler function
		 */
		function addObjectHandler(matcher:Matcher, handler:Function):void;
	}
}
