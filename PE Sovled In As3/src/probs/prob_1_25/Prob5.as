package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;

	/**
	 * <B>Problem 5</B>
	 * <p>2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.</p>
	 * <p>What is the smallest positive number that is <dfn title="divisible with no remainder">evenly divisible</dfn> by all of the numbers from 1 to 20?</p>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob5 extends Problem
	{
		public function Prob5()
		{
			var exists:Array = [];
			var result:Number = 1;
			for(var i:int = 20;i > 0;i--)
			{
				result = i*result/Utils.gcd(i,result);
			}
			showAnswer(result);
		}
	}
}