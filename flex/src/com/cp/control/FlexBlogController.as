package com.cp.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.cp.events.*;
	import com.cp.commands.comment.*;
	import com.cp.commands.post.*;
	public class FlexBlogController extends FrontController
	{
		public function FlexBlogController()
		{
			initialize();
		}
		private function initialize():void{
			this.addCommand(PostEvent.INDEX,PostIndexCommand);
			this.addCommand(PostEvent.SHOW,PostShowCommand);
			this.addCommand(PostEvent.UPDATE,PostUpdateCommand);
			this.addCommand(PostEvent.CREATE,PostCreateCommand);
			this.addCommand(CommentEvent.CREATE,CommentCreateCommand);
		}
	}
}