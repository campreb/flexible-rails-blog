package com.cp.events
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class CommentEvent extends CairngormEvent
	{
		public static const CREATE:String = "CommentCreate";
		public static const DESTROY:String = "CommentDestroy";
		public function CommentEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}