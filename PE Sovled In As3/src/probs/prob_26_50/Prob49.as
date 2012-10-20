package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 49</B>
	 <div class="problem_content" role="problem">
	 <p>The arithmetic sequence, 1487, 4817, 8147, in which each of the terms increases by 3330, is unusual in two ways: (i) each of the three terms are prime, and, (ii) each of the 4-digit numbers are permutations of one another.</p>
	 <p>There are no arithmetic sequences made up of three 1-, 2-, or 3-digit primes, exhibiting this property, but there is one other 4-digit increasing sequence.</p>
	 <p>What 12-digit number do you form by concatenating the three terms in this sequence?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob49 extends Problem
	{
		public function Prob49()
		{
			super();
			Utils.getPrimesUnderMillion( solve );
		}
		
		private function solve( primes:Array ):void
		{
			var dic:Object = {};
			var bits:Array = [];
			var key:int = 0;
			
			for( var i:int = 0;i<primes.length;i++)
			{
				if( int(primes[i]) >= 10000 )
				{
					break;
				}
				if( int(primes[i]) >= 1000 )
				{
					bits = Utils.getBitArray( int(primes[i]) );
					bits.sort();
					key = Utils.getBitsNum( bits );
					if( dic[ key ] )
					{
						dic[ key ].push( int(primes[i]) );
					}
					else
					{
						dic[ key ] = [ int(primes[i]) ];
					}
				}
			}
			var res:String = "";
			var len:int = 0;
			for (var keyStr:String in dic)
			{
				len = dic[keyStr].length; 
				if( len >= 3 )
				{
					for( i = 0;i<len-2;i++)
					{
						for(var j:int = 1;j<len;j++ )
						{
							if( i != j && (dic[keyStr] as Array).indexOf( 2*dic[keyStr][j] - dic[keyStr][i] ) >= 0 )
							{
								res = dic[keyStr][i]+" "+dic[keyStr][j]+" "+(2*dic[keyStr][j] - dic[keyStr][i]);
								trace( res );
							}
						}
					}
				}
			}
			super.showAnswerStr( res );
		}
	}
}