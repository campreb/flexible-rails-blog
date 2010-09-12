package com.cp.model
{
	import com.adobe.cairngorm.model.IModelLocator;
	import com.cp.vo.Post;
	[Bindable]
	public class ModelLocator implements IModelLocator
	{
		private static var instance:ModelLocator;
		public function ModelLocator(enforcer:SingletonEnforcer)
		{
			if (enforcer == null){
				throw new Error("You can only have one ModelLocator");
			}
		}
		public static function getInstance():ModelLocator{
			if (instance == null){
				instance = new ModelLocator(new SingletonEnforcer);
			}
			return instance;
		}
		
		public var postList:Array;
		public var currentPost:Post;
		public var currentView:int = 0;

	}
}
class SingletonEnforcer {}