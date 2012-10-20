package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 37</B>
	 <div class="problem_content" role="problem">
	 <p>The number 3797 has an interesting property. Being prime itself, it is possible to continuously remove digits from left to right, and remain prime at each stage: 3797, 797, 97, and 7. Similarly we can work from right to left: 3797, 379, 37, and 3.</p>
	 <p>Find the sum of the only eleven primes that are both truncatable from left to right and right to left.</p>
	 <p class="info">NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob37 extends Problem
	{
		private var total:int = 0;
		
		public function Prob37()
		{
			Utils.getPrimesUnderMillion( solve );
		}
		
		private function solve( primers:Array ):void
		{
			var p:int = 0;
			var sum:int = 0;
			for (var i:int = 0;i < primers.length;i++)
			{
				p = int(primers[i]);
				if( isAllBitPrime(p) )
				{
					sum += p;
					trace( p );
					total++;
					if(total == 11)
					{
						super.showAnswer(sum);
						break;
					}
				}
			}
		}
		
		private function isAllBitPrime( num:int ):Boolean
		{
			if( num < 10 )
			{
				return false;
			}
			var bits:Array = Utils.getBitArray( num );
			var newNum:int = 0;
			var len:int = bits.length-1;
			for (var i:int = 0;i<len;i++)
			{
				bits.shift();
				newNum = Utils.getBitsNum( bits );
				if( !Utils.isPrimer(newNum) )
				{
					return false;
				}
			}
			bits = Utils.getBitArray( num );
			for (i = 0;i<len;i++)
			{
				bits.pop();
				newNum = Utils.getBitsNum( bits );
				if( !Utils.isPrimer(newNum) )
				{
					return false;
				}
			}
			return true;
		}
	}
}