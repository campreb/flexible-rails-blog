package com.cp.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.IResponder;
	
	public class CommentDelegate
	{
		private var responder:IResponder;
		private var service:Object;
		public function CommentDelegate(responder:IResponder)
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("CommentRO");
			this.responder = responder;
		}
		public function create(params:Object):void{
			var call:Object = service.create({comment:params});
			call.addResponder(responder);
		}

	}
}