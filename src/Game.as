package
{	
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Game extends World
	{		
		override public function begin():void
		{
			// Level size
			FP.width = 640;
			FP.height = 480;
		}
		
		override public function update():void 
		{
			super.update();
		}	
	}	
}
