package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	public class Main extends Engine
	{
		[SWF(width="640",height="480")]
		public function Main():void 
		{
			super(Global.screenWidth, Global.screenHeight, 60, false);
			FP.screen.scale = 1;
			FP.screen.color = 0x8c9192;
			FP.console.enable();
		}
		
		override public function init():void
		{
			FP.world = new Game();
		}	
	}
}