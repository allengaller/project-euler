package probs
{
	import utils.Utils;

	public class Prob83 extends Problem
	{
		public static const LEFT:int = 0;
		public static const UP:int = 1;
		public static const RIGHT:int = 2;
		public static const DOWN:int = 3;
		
		private var _objArr:Array = [];
		
		public function Prob83()
		{
			super();
			Utils.getDataFromExternal( "external/prob83", solve );
		}
		
		private function findNeibor( code:int, i:int, j:int ):Object
		{
			switch( code )
			{
				case LEFT:
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
					if( j + 1 < 0 || j+1>=_objArr.length )
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
					_objArr[i][j] = { "x":i, "y":j, "num": numArr[i][j], "sum":Number( numArr[i][j] ), "father":null };
					if( i == numArr.length - 1 && j == numArr.length - 1 )
					{
						end = _objArr[i][j];
					}
				}
			}
			var begin:Object = _objArr[0][0];
			var openHeap:heap = new heap();
			openHeap.insert( begin );
			var closeList:Array = [];
			
			var curr:Object = null;
			var king:Object = null;
			var neibor:Object = null;
			
			
			do
			{
				king = openHeap.min;
				if(!king)
				{
					break;
				}
				curr = king;
				openHeap.remove( king );
				closeList.push( king );
				
				for(i= 2;i<4;i++)
				{
					neibor = findNeibor( i, curr.x, curr.y );
					
					//若不存在，已经在关闭列表中或者为障碍物则跳过
					if(!neibor || closeList.indexOf(neibor)>=0 )
					{
						continue;
					}
					//若邻居不在打开列表中，则将其添加进打开列表,并将当前节点设为该邻居的父节点
					if(openHeap.insertIgnore(neibor))
					{
						neibor.father = curr;
						neibor.sum = curr.sum + neibor.num;
					}
					//已存在于开放列表中
					if(openHeap.findIndex(neibor) >= 0 && curr.num+curr.sum < neibor.sum)
					{
						neibor.father = curr;
						neibor.sum = curr.sum + neibor.num;
					}
				}
			}while( closeList.indexOf(end)<0 || openHeap.length() );
			var pas:Object = end;
			var str:String = "";
			var sum:Number = 0;
			while(pas != begin && pas)
			{
				sum += pas.num;
				str += pas.num+" ";
				pas = pas.father;
			}
			sum += begin.num;
			str += begin.num+" ";
			super.showAnswerStr( "Sum is "+sum+" Path is "+str);
		}
	}
}

class heap extends Object
{
	private var m_heapArr:Array;//堆数组
	
	public function heap()
	{
		m_heapArr = [];
	}
	
	public function length():int
	{
		return m_heapArr.length;
	}
	
	public function insert(po:Object):void
	{
		m_heapArr.push(po);
	}
	
	public function insertIgnore(po:Object):Boolean
	{
		if(m_heapArr.indexOf(po)<0)
		{
			m_heapArr.push(po);
			return true;
		}
		return false;
	}
	
	public function findIndex(po:Object):int
	{
		return m_heapArr.indexOf(po);
	}
	
	public function get min():Object
	{
		if(m_heapArr.length)
		{
			for(var i:int = Math.floor(m_heapArr.length/2) ; i>=0;i--)
			{
				heapify(i);
			}
			return m_heapArr[0];
		}
		return null;
	}
	
	public function remove(po:Object):void
	{
		if(m_heapArr.indexOf(po)>=0)
		{
			m_heapArr.splice(m_heapArr.indexOf(po),1);
		}
	}
	
	private function rightIndex(index:int):int
	{
		return index * 2 + 1;
	}
	
	private function leftIndex(index:int):int
	{
		return index * 2;
	}
	
	private function heapify(index:int):void
	{
		
		if(indexOutOFRange(index))
		{
			return;
		}
		var left:int = leftIndex(index);
		var right:int = rightIndex(index);
		var minIndex:int = index;
		if( !indexOutOFRange(left) && m_heapArr[left].sum < m_heapArr[index].sum)
		{
			minIndex = left;
		}
		if( !indexOutOFRange(right) && m_heapArr[right].sum < m_heapArr[minIndex].sum)
		{
			minIndex = right;
		}
		if(minIndex != index)
		{
			swap(minIndex, index);
			heapify(minIndex);
		}
	}
	
	private function swap(i:int, j:int):void
	{
		if( indexOutOFRange(i) || indexOutOFRange(j) )
		{
			return;
		}
		var temp:Object = m_heapArr[i];
		m_heapArr[i] = m_heapArr[j]; 
		m_heapArr[j] = temp; 
	}
	
	private function indexOutOFRange(index:int):Boolean
	{
		return index >= m_heapArr.length;
	}
}