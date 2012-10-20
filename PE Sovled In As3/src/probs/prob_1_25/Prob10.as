package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;

	/**
	 * <B>Problem 10</B>
	 <div class="problem_content" role="problem">
	 <p>The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.</p>
	 <p>Find the sum of all the primes below two million.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob10 extends Problem
	{
		private var add:int = 0;
		private var start:int = 3;
		private var end:int = 2000000;
		
		public function Prob10()
		{
			var add:Number = 0;
			for(var i:int = start;i<end;i+=2)
			{
				if(Utils.isPrimer(i))
				{
					add += i;
				}
			}
			showAnswer(add+2);
		}
	}
}