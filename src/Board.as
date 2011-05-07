package
{
	import flash.display.BitmapData;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Tilemap;
	
	public class Board extends Entity
	{
		public var tileset:Tilemap;
		
		private var _tileSize:int;
		
		public var padding:int;
		public var margin:int;
				
		public function Board(x:Number, y:Number, width:int, height:int):void 
		{			
			_tileSize = Global.tileSize;
			
			this.x = x;
			this.y = y;
			this.width = width * _tileSize;
			this.height = height * _tileSize;
			
			loadLevel();
			
			graphic = tileset;
		}
		
		override public function update():void 
		{
			super.update();
		}
		
		public function loadLevel():void 
		{
			tileset = new Tilemap(Assets.TILESET, width, height, _tileSize, _tileSize);
			
			for (var i:int = 0; i < width / _tileSize; i++)
			{
				for (var j:int = 0; j < height / _tileSize; j++)
				{					
					tileset.setTile(i, j, 0);
				}
			}
		}		
		
		override public function render():void 
		{
			super.render();
		}
		
	}
}