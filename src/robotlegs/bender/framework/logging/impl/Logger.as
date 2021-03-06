//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.framework.logging.impl
{
	import flash.utils.getTimer;
	import robotlegs.bender.framework.logging.api.ILogTarget;
	import robotlegs.bender.framework.logging.api.ILogger;

	public class Logger implements ILogger
	{

		/*============================================================================*/
		/* Private Properties                                                         */
		/*============================================================================*/

		private var _source:Object;

		private var _target:ILogTarget;

		/*============================================================================*/
		/* Constructor                                                                */
		/*============================================================================*/

		public function Logger(source:Object, target:ILogTarget)
		{
			_source = source;
			_target = target;
		}

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		public function debug(message:*, params:Array = null):void
		{
			_target.log(_source, 32, getTimer(), message, params);
		}

		public function info(message:*, params:Array = null):void
		{
			_target.log(_source, 16, getTimer(), message, params);
		}

		public function warn(message:*, params:Array = null):void
		{
			_target.log(_source, 8, getTimer(), message, params);
		}

		public function error(message:*, params:Array = null):void
		{
			_target.log(_source, 4, getTimer(), message, params);
		}

		public function fatal(message:*, params:Array = null):void
		{
			_target.log(_source, 2, getTimer(), message, params);
		}
	}
}
