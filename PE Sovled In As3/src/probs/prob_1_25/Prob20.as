package probs.prob_1_25
{
	import probs.Problem;
	
	import utils.BigInt;
	
	/**
	 * <B>Problem 20</B>
	 <div class="problem_content" role="problem">
	 <p><i>n</i>! means <i>n</i> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> (<i>n</i> <img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;"> 1) <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> ... <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 3 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 2 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 1</p>
	 <p>For example, 10! = 10 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 9 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> ... <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 3 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 2 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 1 = 3628800,<br>and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.</p>
	 <p>Find the sum of the digits in the number 100!</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob20 extends Problem
	{
		public function Prob20()
		{
			var i:int = 1;
			var bigNum:BigInt = new BigInt("1");
			while( i < 100 )
			{
				bigNum = bigNum.prod(++i);
			}
			var sum:int = 0;
			for(i = 0;i<bigNum.digits;i++)
			{
				sum += int(bigNum.toString().charAt(i));
			}
			super.showAnswer(sum);
		}
	}
}