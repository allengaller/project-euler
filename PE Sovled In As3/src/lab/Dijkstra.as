package lab
{
	import flash.net.getClassByAlias;
	import flash.utils.Dictionary;
	
	import utils.Utils;
	import probs.Problem;

	public class Dijkstra extends Problem
	{
		private var _objArr:Array = [];
		
		public static const LEFT:int = 0;
		public static const UP:int = 1;
		public static const RIGHT:int = 2;
		public static const DOWN:int = 3;
		
		public function Dijkstra()
		{
			Utils.getDataFromExternal( "external/prob83", solve );
		}
		
		private function findNeibor( code:int, i:int, j:int ):Object
		{
			switch( code )
			{
				case LEFT:
					return null;
					if( j - 1 < 0 || j-1>=_objArr.length )
					{
						return null;
					}
					return _objArr[i][j-1];
				case UP:
					if( i - 1 < 0 || i-1>=_objArr.length )
					{
						return null;
					}
					return _objArr[i-1][j];
				case RIGHT:
					if( j + 1 < 0 || j + 1 >= _objArr.length )
					{
						return null;
					}
					return _objArr[i][j+1];
				case DOWN:
					if( i + 1 < 0 || i+1>=_objArr.length )
					{
						return null;
					}
					return _objArr[i+1][j];
				default:
					return null;
			}
		}
		/**dijkstar算法 精简版*/
		private function solve( data:String ):void
		{
			var numArr:Array = Utils.getIntArrayFromString( data, "," );
			var end:Object = {};
			
			for (var i:int = 0;i<numArr.length;i++)
			{
				for (var j:int = 0;j<(numArr[i] as Array).length;j++)
				{
					if( !_objArr[i] )
					{
						_objArr[i] = [];
					}
					_objArr[i][j] = { "x":i, "y":j, "num": numArr[i][j], "sum":999999, "father":null };
					if( i == numArr.length - 1 && j == numArr.length - 1 )
					{
						end = _objArr[i][j];
					}
				}
			}
			var minest:int = 999999999;
			for (i = 0;i<numArr.length;i++)
			{
				_objArr[i][0]["sum"] = _objArr[i][0]["num"];
				/**已找到的最短路径点列表*/
				var solveds:Dictionary = new Dictionary();
				/**需要搜寻的节点列表*/
				var opens:Dictionary = new Dictionary();
				/**再一次遍历中，从待搜寻的列表中找到的最小值*/
				var min:Object = null;
				
				var minValue:int = 99999999;
				var tempMinNode:Object;
				
				var endCor:String = getCor( end );
				
				var neibor:Object;
				opens[getCor(_objArr[i][0])] = _objArr[i][0];
				
				while( true/*!solveds.hasOwnProperty(endCor)*/ )
				{
					minValue = 99999999;
					//遍历找出最小的值
					for each( var node:Object in opens )
					{
						if( node.sum < minValue )
						{
							minValue = node.sum;
							tempMinNode = node;
						}
					}
					min = tempMinNode;
					if( min.y == numArr.length - 1 )
					{
						trace("find " + min.num);
						if( min.sum < minest )
						{
							minest = min.sum;
						}
						break;
					}
					solveds[ getCor(min) ] = min;
					delete opens[ getCor(min) ];
					//更新
					for( var dr:int = LEFT; dr <= DOWN; dr++ )
					{
						neibor = findNeibor( dr, min.x, min.y );
						if(neibor)
						{
							var neiborCor:String = getCor( neibor );
							if( !solveds.hasOwnProperty(neiborCor) && !opens.hasOwnProperty(neiborCor) )
							{
								opens[neiborCor] = neibor;
							}
							if( neibor.num + min.sum < neibor.sum )
							{
								neibor.sum = neibor.num + min.sum;
							}						
						}
					}
				}
				
			}
			//super.showAnswerStr( "Min sum is "+end["sum"] );
			super.showAnswerStr( "Min sum is "+minest );
		}
		
		private function getCor( obj:Object ):String
		{
			return ""+(obj.x*100+obj.y);
		}
	}
}