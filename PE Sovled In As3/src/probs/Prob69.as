package probs
{
	import utils.Utils;

	public class Prob69 extends Problem
	{
		private var shot:Object = {};
		
		public function Prob69()
		{
			var max:Number = 0;
			var maxV:int = 0;
			var temp:int;
			for(var i:int = 2;i<=1000000;i+=2)
			{
				temp = quickPhi(i);
				if( i/temp > max )
				{
					max = i/temp;
					maxV = i;
				}
			}
			super.showAnswerStr("max value below "+i+" is "+maxV+" max/phi(max) = "+max);
		}
		
		private function quickPhi( num:int ):int
		{
			if( num <= 2 || num % 2 != 0 )
			{
				return 1;
			}
			if( (num/2) % 2 == 0 )
			{
				return EulerPhi(num/2)*2;				
			}
			if( (num/2) % 2 != 0 )
			{
				return EulerPhi(num/2);				
			}
			return 0;
		}
		
		private function EulerPhi( num:int ):int
		{
			if( num <= 2 )
			{
				return 1;
			}
			if( shot[num] )
			{
				return shot[num];
			}
			var ct:int = 1;
			for( var i:int = 2;i<num;i++ ) 
			{
				if( Utils.gcd(num,i) == 1 )
				{
					ct ++;
				}
			}
			shot[num] = ct;
			return ct;
		}
	}
}