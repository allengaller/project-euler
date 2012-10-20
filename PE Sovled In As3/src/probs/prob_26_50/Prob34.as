package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 34</B>
	 <div class="problem_content" role="problem">
	 <p>145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.</p>
	 <p>Find the sum of all numbers which are equal to the sum of the factorial of their digits.</p>
	 <p class="info">Note: as 1! = 1 and 2! = 2 are not sums they are not included.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob34 extends Problem
	{
		private var _BitFacts:Array = [];
		public function Prob34()
		{
			super();
			for( var i:int = 0;i<10;i++)
			{
				_BitFacts.push( Utils.fact(i) );
			}
			var sum:Number = 0;
			for( i = 3;i<2000000;i++)
			{
				if( equalToEveryBitSum(i) )
				{
					trace( i );
					sum += i;
				}
			}
			for( i = 2000001;i<4000000;i++)
			{
				if( equalToEveryBitSum(i) )
				{
					trace( i );
					sum += i;
				}
			}
			for( i = 4000001;i<6000000;i++)
			{
				if( equalToEveryBitSum(i) )
				{
					trace( i );
					sum += i;
				}
			}
			for( i = 6000001;i<8000000;i++)
			{
				if( equalToEveryBitSum(i) )
				{
					trace( i );
					sum += i;
				}
			}
			for( i = 8000001;i<10000000;i++)
			{
				if( equalToEveryBitSum(i) )
				{
					trace( i );
					sum += i;
				}
			}
			super.showAnswer( sum );
		}
		
		private function equalToEveryBitSum( num:int ):Boolean
		{
			var bits:Array = Utils.getBitArray( num );
			var sum:int = 0;
			for each( var bit:int in bits )
			{
				sum += _BitFacts[bit];
			}
			return sum == num;
		}
	}
}