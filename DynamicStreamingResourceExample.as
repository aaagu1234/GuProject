package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	
	import org.osmf.elements.VideoElement;
	import org.osmf.media.MediaPlayerSprite;
	import org.osmf.net.DynamicStreamingItem;
	import org.osmf.net.DynamicStreamingResource;
	import org.osmf.net.NetConnectionFactory;
	import org.osmf.media.MediaElement;
	import org.osmf.media.LoadableElementBase;
	
	public class DynamicStreamingResourceExample extends Sprite
	{
		public function DynamicStreamingResourceExample()
		{
			super();
		 
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.align = StageAlign.TOP_LEFT;
			
			var mediaPlayerSprite:MediaPlayerSprite = new MediaPlayerSprite();
			var videoElement:VideoElement = new VideoElement();
			var dynResource:DynamicStreamingResource = new DynamicStreamingResource("rtmp://192.168.1.205/vod");
			
			dynResource.streamItems = Vector.<DynamicStreamingItem>(
				[     new DynamicStreamingItem("mp4:mytest/test.mp4", 799563, 768, 428)
					, new DynamicStreamingItem("mp4:mytest/test2.f4v", 500, 768, 428)
					 
				]);
			
			videoElement.resource = dynResource;
			
			addChild(mediaPlayerSprite);
			mediaPlayerSprite.media = videoElement;    
		}    
	}
} 
