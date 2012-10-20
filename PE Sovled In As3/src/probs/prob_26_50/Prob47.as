package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 47</B>
	 * <div class="problem_content" role="problem">
	 * <p>The first two consecutive numbers to have two distinct prime factors are:</p>
	 * <p style="margin-left:100px;">14 = 2 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 7<br>15 = 3 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 5</p>
	 * <p>The first three consecutive numbers to have three distinct prime factors are:</p>
	 * <p style="margin-left:100px;">644 = 2² <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 7 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 23<br>645 = 3 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 5 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 43<br>646 = 2 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 17 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 19.</p>
	 * <p>Find the first four consecutive integers to have four distinct primes factors. What is the first of these numbers?</p>
	 *</div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob47 extends Problem
	{
		public function Prob47()
		{
			var dic:Array = [];
			super();
			for( var i:int = 100;i<300000;i++)
			{
				dic[i] = Utils.getPrimeFactors( i ).length;
			}
			for (i = 100;i<299997;i++)
			{
				if( 4 == dic[i] && 4 == dic[i+1] && 4 == dic[i+2] && 4 == dic[i+3] )
				{
					super.showAnswerStr("result:"+i);
					break;
				}
			}
		}
	}
}