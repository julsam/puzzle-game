package
{	
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.World;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class Game extends World
	{
		public var board:Board;
		
		override public function begin():void
		{
			// Level size
			FP.width = Global.screenWidth;
			FP.height = Global.screenHeight;
			
			add(board = new Board(24, 24, Global.gridWidth, Global.gridHeight));
			
		}
		
		override public function update():void
		{
			if (Input.mousePressed && board.collidePoint(board.x, board.y, Input.mouseX, Input.mouseY))
			{
				trace(Math.floor(Input.mouseX / Global.tileSize));
				trace(Math.floor(Input.mouseY / Global.tileSize));
				trace("===========");
				var e:Entity;
				add(e = new Entity(0, 0, new Image(new BitmapData(24, 24, false, 0xff0000))));
				
				placeObject(e, Input.mouseX, Input.mouseY);
			}
			
			super.update();
		}
		
		
		
		public function placeObject(obj:Entity, mouseX:Number, mouseY:Number):void
		{
			var column:uint = Math.floor(mouseX / Global.tileSize);
			var row:uint = Math.floor(mouseY / Global.tileSize);
			obj.x = column * Global.tileSize;
			obj.y = row * Global.tileSize;
		}
	}	
}
