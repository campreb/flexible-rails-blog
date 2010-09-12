package com.cp.vo
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	[RemoteClass(alias="Post")]
	public class Post
	{
		public var id:int;
		public var title:String;
		public var body:String;
		public var comments:Array;
		public var updatedAt:Date;
		public var createdAt:Date;
	}
}