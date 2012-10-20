package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	public class Prob46 extends Problem
	{
		/**
		 * <B>Problem 46</B>
		 * <div class="problem_content" role="problem">
		 * <p>It was proposed by Christian Goldbach that every odd composite number can be written as the sum of a prime and twice a square.</p>
		 * <p style="margin-left:10px;">9 = 7 + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">1<sup>2</sup><br>
		 * 15 = 7 + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">2<sup>2</sup><br>
		 * 21 = 3 + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">3<sup>2</sup><br>
		 * 25 = 7 + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">3<sup>2</sup><br>
		 * 27 = 19 + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">2<sup>2</sup><br>
		 * 33 = 31 + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">1<sup>2</sup></p>
		 * <p>It turns out that the conjecture was false.</p>
		 * <p>What is the smallest odd composite that cannot be written as the sum of a prime and twice a square?</p>
		 * </div>
		 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
		 * 
		 */
		public function Prob46()
		{
			super();
			var d:int = 1;
			for( var i:int = 9;i<100000;i++)
			{
				if( i % 2 != 0 && !Utils.isPrimer(i) )
				{
					d = 1;
					while( 2*d*d < i )
					{
						if( Utils.isPrimer( i - 2*d*d ) )
						{
							break;
						}
						d++;
					}
					if( 2*d*d >= i )
					{
						super.showAnswerStr("The smallest odd composite is "+i);
						return;
					}
				}
			}
		}
	}
}