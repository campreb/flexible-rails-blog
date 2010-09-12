package com.cp.vo
{
	[Bindable]
	[RemoteClass(alias="Comment")]
	public class Comment
	{
		public var name:String;
		public var email:String;
		public var body:String;
		public var post_id:int;
		public var post:Post;
		public function get gravatarURL():String{
			return "http://www.gravatar.com/avatar/" +
							MD5.hash(this.email).toString() + "?" +
							"size=20&rating=G&d=mm";
		}

	}
}