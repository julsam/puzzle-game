package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine
	{
		[SWF(width="640",height="480")]
		public function Main():void 
		{
			super(640, 480, 60, false);
			FP.screen.scale = 1;
			FP.screen.color = 0x8c9192;			
		}
		
		override public function init():void
		{
			FP.world = new Game();
		}	
	}
}