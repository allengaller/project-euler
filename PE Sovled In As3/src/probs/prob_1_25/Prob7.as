package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;
	
	/**
	 * <B>Problem 7</B>
	 <div class="problem_content" role="problem">
	 <p>The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.</p>
	 <p>Find the sum of all the primes below two million.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob7 extends Problem
	{
		private var th:int = 10001;
		public function Prob7()
		{
			var num:Number = 2;
			var count:int = 0;
			while(count != th)
			{
				if(Utils.isPrimer(num))
				{
					count++;
					if(count == th)
					{
						break;
					}
				}
				num++;
			}
			super.showAnswer(num);
		}
	}
}