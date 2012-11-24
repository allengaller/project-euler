package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;

	/**
	 * <B>Problem 41</B>
	 <div class="problem_content" role="problem">
	 <p>We shall say that an <i>n</i>-digit number is pandigital if it makes use of all the digits 1 to <i>n</i> exactly once. For example, 2143 is a 4-digit pandigital and is also prime.</p>
	 <p>What is the largest <i>n</i>-digit pandigital prime that exists?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob41 extends Problem
	{
		public function Prob41()
		{
			// as we know 9 pandigital and 8 pandigital can not be a prime number
			// becausee 1+2+...+9 = 45 and 1+2+...+8 = 36 can be evenly divisable by 3
			// so we start by 7 pandigital
			for (var i:int = 7654321; i > 1000000;i--)
			{
				if( isPandigitalNum(i,1,7) && Utils.isPrimer(i) )
				{
					super.showAnswer( i );
					break;
				}
			}
		}
		
		private function isPandigitalNum( num:int, head:int = 1, tail:int = 9 ):Boolean
		{
			if( tail < head )
			{
				return false;
			}
			var digits:Array = Utils.getBitArray( num );
			var pan:Object = {};
			for( var i:int = head;i<=tail;i++)
			{
				pan[i] = 0;
			}
			for each (var digit:int in digits )
			{
				if( digit < head || digit > tail || pan[digit] )
				{
					return false;
				}
				pan[digit] = 1;
			}
			return true;
		}
	}
}