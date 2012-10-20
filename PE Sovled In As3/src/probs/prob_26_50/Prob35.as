package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;

	/**
	 * <B>Problem 35</B>
	 <div class="problem_content" role="problem">
	 <p>The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.</p>
	 <p>There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.</p>
	 <p>How many circular primes are there below one million?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob35 extends Problem
	{
		private var repObj:Object = {};
		private var repeat:int = 0;
		
		public function Prob35()
		{
			super();
			Utils.getPrimesUnderMillion( callBack ); 
		}
		
		private function callBack( primes:Array ):void
		{
			var num:int = 0;
			for ( var i:int = primes.length-1;i>=0; i-- )
			{
				if( isOffsetPrime( int(primes[i]) ) )
				{
					repeat ++;
				}
			}
			super.showAnswerStr( "Circular primes count is "+repeat ); 
		}
		
		private function isOffsetPrime( num:int ):Boolean
		{
			var bits:Array = Utils.getBitArray( num );
			var offset:int = 0;
			while( offset < bits.length-1 )
			{
				var tail:int = bits.pop();
				bits.unshift( tail );
				var newNum:int = Utils.getBitsNum( bits );
				if( !Utils.isPrimer(newNum) )
				{
					return false;
				}
				offset ++;
			}
			return true;
		}
	}
}