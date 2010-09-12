package com.cp.commands.post
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.cp.business.PostDelegate;
	import com.cp.model.ModelLocator;
	
	import mx.collections.ArrayCollection;
	import mx.rpc.IResponder;

	public class PostIndexCommand implements IResponder, ICommand
	{
		public function PostIndexCommand()
		{
		}
		private var _model:ModelLocator = ModelLocator.getInstance();
		public function result(data:Object):void
		{
			_model.postList = data.result as Array;
			_model.currentView = 0;
		}
		
		public function fault(info:Object):void
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:PostDelegate = new PostDelegate(this);
			delegate.index();
		}
		
	}
}