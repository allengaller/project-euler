package probs
{
	import utils.Utils;

	public class Prob92 extends Problem
	{
		private var shot:Object = {};
		public function Prob92()
		{
			super();
			var cnt:int = 0;
			for(var i:int = 2;i<1000000;i++)
			{
				if(arriveAt89(i) )
				{
					cnt ++;
				}
			}
			super.showAnswer( cnt );
		}
		
		private function arriveAt89( num:int ):Boolean
		{
			var ori:int = num;
			var bits:Array = [];
			while( num != 89 && num != 1 )
			{
				if( shot[num] )
				{
					return shot[num] == 1;
				}
				bits = Utils.getBitArray( num );
				num = 0;
				for each (var bit:int in bits)
				{
					num += bit*bit;
				}
			}
			if( 89 == num )
			{
				shot[ori] = 1;
				return true;
			}
			else
			{
				shot[ori] = -1;
				return false;
			}
			return 89 == num;
		}
	}
}