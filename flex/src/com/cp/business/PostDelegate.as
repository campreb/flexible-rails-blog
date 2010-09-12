package com.cp.business
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.IResponder;
	
	public class PostDelegate
	{
		private var responder:IResponder;
		private var service:Object;
		public function PostDelegate(responder:IResponder)
		{
			this.service = ServiceLocator.getInstance().getRemoteObject("PostRO");
			this.responder = responder;
		}
		public function index():void{
			var call:Object = service.index();
			call.addResponder(responder);
		}
		public function show(id:int):void{
			var call:Object = service.show({id:id});
			call.addResponder(responder);
		}
		public function create(params:Object):void{
			var call:Object = service.create({post:params});
			call.addResponder(responder);
		}
		public function update(id:int,post:Object):void{
			var call:Object = service.update({id:id,post:post});
			call.addResponder(responder);
		}
		
		

	}
}