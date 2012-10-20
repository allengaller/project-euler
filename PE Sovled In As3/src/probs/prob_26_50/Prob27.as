package probs.prob_26_50
{
	import utils.Utils;
	import probs.Problem;
	
	/**
	 * <B>Problem 27</B>
	 <div class="problem_content" role="problem">
	 <p>Euler published the remarkable quadratic formula:</p>
	 <p style="text-align:center;"><i>n</i>² + <i>n</i> + 41</p>
	 <p>It turns out that the formula will produce 40 primes for the consecutive values <i>n</i> = 0 to 39. However, when <i>n</i> = 40, 40<sup>2</sup> + 40 + 41 = 40(40 + 1) + 41 is divisible by 41, and certainly when <i>n</i> = 41, 41² + 41 + 41 is clearly divisible by 41.</p>
	 <p>Using computers, the incredible formula &nbsp;<i>n</i>² <img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;"> 79<i>n</i> + 1601 was discovered, which produces 80 primes for the consecutive values <i>n</i> = 0 to 79. The product of the coefficients, <img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">79 and 1601, is <img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">126479.</p>
	 <p>Considering quadratics of the form:</p>
	 <blockquote>
	 <i>n</i>² + <i>an</i> + <i>b</i>, where |<i>a</i>| <img src="images/symbol_lt.gif" width="10" height="10" alt="&lt;" border="0" style="vertical-align:middle;"> 1000 and |<i>b</i>| <img src="images/symbol_lt.gif" width="10" height="10" alt="&lt;" border="0" style="vertical-align:middle;"> 1000<br><br>
	 <div class="info" style="text-align:left;">where |<i>n</i>| is the modulus/absolute value of <i>n</i><br>e.g. |11| = 11 and |<img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">4| = 4</div>
	 </blockquote>
	 <p>Find the product of the coefficients, <i>a</i> and <i>b</i>, for the quadratic expression that produces the maximum number of primes for consecutive values of <i>n</i>, starting with <i>n</i> = 0.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob27 extends Problem
	{
		public function Prob27()
		{
			var a:int = -999;
			var b:int = -999;
			
			var maxA:int = -999;
			var maxB:int = -999;
			var maxN:int = 0;
			
			for (;a<1000;a++)
			{
				for(b = -999;b<1000;b++)
				{
					for (var n:int = 0;n<80;n++)
					{
						if( !Utils.isPrimer(n*n + a*n + b) )
						{
							break;
						}
					}
					if( n>maxN )
					{
						maxA = a;
						maxB = b;
						maxN = n;
					}
				}
			}
			
			super.showAnswer( maxA * maxB );
		}
	}
}