package com.modestmaps.core.painter;

import com.modestmaps.core.Tile;

import flash.utils.Dictionary;

/**
 * the alreadySeen Dictionary here will contain up to grid.maxTilesToKeep Tiles
 */
class TileCache
{
	// Tiles we've already seen and fully loaded, by key (.name)
	private var alreadySeen:Dictionary;
	private var tilePool:TilePool; // for handing tiles back!

	public function new(tilePool:TilePool)
	{
		this.tilePool = tilePool;
		alreadySeen = new Dictionary();
	}

	public var size(getSize, null):Int;
	
	private function getSize():Int
	{
		var alreadySeenCount:Int = 0;
		for (key in alreadySeen)
		{
			alreadySeenCount++;
		}
		return alreadySeenCount;	
	}

	public function putTile(tile:Tile):Void
	{
		alreadySeen[tile.name] = tile;
	}

	public function getTile(key:String):Tile
	{
		return cast(alreadySeen[key], Tile);
	}

	public function containsKey(key:String):Bool
	{
		return Std.is(alreadySeen[key], Tile);
	}

	public function retainKeys(keys:Array):Void
	{
		for (key in alreadySeen)
		{
			if (keys.indexOf(key) < 0)
			{
				tilePool.returnTile(cast(alreadySeen[key], Tile));
				untyped __delete__(alreadySeen, key);
			}
		}	
	}

	public function clear():Void
	{
		for (key in alreadySeen)
		{
			tilePool.returnTile(cast(alreadySeen[key], Tile));
			untyped __delete__(alreadySeen, key);
		}
		alreadySeen = new Dictionary();	
	}
}