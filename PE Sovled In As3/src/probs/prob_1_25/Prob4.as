package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;

	/**
	 * <B>Problem 4</B>
	 * <p>A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 99.</p>
	 * <p>Find the largest palindrome made from the product of two 3-digit numbers.</p>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob4 extends Problem
	{
		public function Prob4()
		{
			var max:int = 0;
			for(var i:int = 999;i>=100;i--)
			{
				for(var j:int = 999;j>=100;j--)
				{
					if(Utils.isParlindrome(i*j) && i*j > max)
					{
						max = i*j;
					}
				}
			}
			showAnswer(max);
		}
	}
}