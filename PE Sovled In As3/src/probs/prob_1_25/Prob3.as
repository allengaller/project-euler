package probs.prob_1_25
{
	import probs.Problem;
	
	/**
	 * <B>Problem 3</B>
	 * <p>The prime factors of 13195 are 5, 7, 13 and 29.</p>
	 * <p>What is the largest prime factor of the number 600851475143 ?</p>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob3 extends Problem
	{
		public function Prob3()
		{
			var divisor:int = 2;
			var number:Number = 600851475143;
			while (number > 1) 
			{
				if (0 == (number % divisor)) 
				{
					number /= divisor;
					divisor--;
				}
				divisor++;
			}
			super.showAnswer( divisor );
		}
		
		
	}
}