package probs
{
	
	import utils.BigInt;
	
	/**
	 * <B>Problem 56</B>
	 <div class="problem_content" role="problem">
	 <p>A googol (10<sup>100</sup>) is a massive number: one followed by one-hundred zeros; 100<sup>100</sup> is almost unimaginably large: one followed by two-hundred zeros. Despite their size, the sum of the digits in each number is only 1.</p>
	 <p>Considering natural numbers of the form, <i>a<sup>b</sup></i>, where <i>a, b</i> <img src="images/symbol_lt.gif" width="10" height="10" alt="&lt;" border="0" style="vertical-align:middle;"> 100, what is the maximum digital sum?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob56 extends Problem
	{
		public function Prob56()
		{
			super();
			var maxSum:int = 0;
			var bigP:BigInt = new BigInt("1");
			var tmpSum:int = 0;
			var maxA:int = 0;
			var maxB:int = 0;
			
			for( var a:int = 1;a<=99;a++ )
			{
				bigP = new BigInt("1");
				for (var b:int = 1;b<=51;b++)
				{
					bigP = bigP.product(a);
					tmpSum = getBitsSum(bigP.stri);
					if( tmpSum > maxSum )
					{
						maxSum = tmpSum;
						maxA = a;
						maxB = b;
					}
				}
			}
			super.showAnswerStr("a:"+maxA+" b:"+maxB+" max sum:"+maxSum);
		}
		
		private function getBitsSum( bits:String ):int
		{
			var sum:int = 0;
			for (var i:int = 0;i<bits.length;i++)
			{
				sum += int( bits.charAt(i) );
			}
			return sum;
		}
	}
}