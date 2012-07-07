package probs
{
	import utils.Utils;

	public class Prob15 extends Problem
	{
		private const N:int = 21;
		
		private var currList:Array = [];
		private var Matrix:Array = [];
		
		public function Prob15()
		{
			for (var i:int = 0;i<N-1;i++)
			{
				Matrix[i] = [];
				for (var j:int = 0;j<N;j++)
				{
					Matrix[i][j] = 0;
				}
			}
			Matrix[0][0] = 1;
			var tempList:Array  = [{i:0, j:0}];
			while( !isEnd() )
			{
				currList = Utils.getADeepCopy(tempList);
				tempList = [];
				for each(var v:Object in currList)
				{
					if(v.i+1 < N-1 && v.j < N)
					{
						push2List(tempList, {i:v.i+1, j:v.j});
						Matrix[v.i+1][v.j] += Matrix[v.i][v.j];
					}
					if(v.i < N && v.j+1 < N)
					{
						push2List(tempList, {i:v.i, j:v.j+1});
						Matrix[v.i][v.j+1] += Matrix[v.i][v.j];
					}
				}
			}
			
			super.showAnswer( 2 * Matrix[N-2][N-1] );
			
		}
		
		private function push2List(list:Array, v:Object):void
		{
			for each(var vl:Object in list)
			{
				if(vl.i == v.i && vl.j == v.j)
				{
					return;
				}
			}
			list.push(v);
		}
		private function isEnd():Boolean
		{
			for each(var value:Object in currList)
			{
				if(value.i == N-2 && value.j == N-1)
				{
					return true;
				}
			}
			return false;
		}
		
	}
}