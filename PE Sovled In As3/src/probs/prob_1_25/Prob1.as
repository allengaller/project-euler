package probs.prob_1_25
{	
	import probs.Problem;
	
	/**
	 * <B>Problem 1</B>
	 * <p>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.</p>
	 * <p>Find the sum of all the multiples of 3 or 5 below 1000.</p>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob1 extends Problem
	{
		private var length:int = 1000;
		
		public function Prob1()
		{
			var num:int = 3;
			var add:int = 0;
			while(num < length)
			{
				if(num%3 == 0 || num%5 == 0)
				{
					add += num;
				}
				num++;
			}
			super.showAnswer(add);
		}
	}
}