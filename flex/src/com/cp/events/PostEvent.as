package com.cp.events
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class PostEvent extends CairngormEvent
	{
		public static const INDEX:String = "PostIndex";
		public static const SHOW:String = "PostShow";
		public static const CREATE:String = "PostCreate";
		public static const UPDATE:String = "PostUpdate";
		
		public function PostEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		
	}
}