package com.cp.commands.post
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.cp.business.PostDelegate;
	import com.cp.model.ModelLocator;
	import com.cp.vo.Post;
	
	import mx.rpc.IResponder;

	public class PostShowCommand implements IResponder, ICommand
	{
		public function PostShowCommand()
		{
		}
		private var _model:ModelLocator = ModelLocator.getInstance();
		public function result(data:Object):void
		{
			_model.currentPost = data.result as Post;
			_model.currentView = 1;
		}
		
		public function fault(info:Object):void
		{
		}
		
		public function execute(event:CairngormEvent):void
		{
			var delegate:PostDelegate = new PostDelegate(this);
			delegate.show(event.data);
		}
		
	}
}