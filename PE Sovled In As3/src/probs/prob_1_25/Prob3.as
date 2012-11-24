package probs.prob_1_25
{
	import probs.Problem;
	
	/**
	 * <B>Problem 3 (!Valuable)</B>
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
			//loop end by number <= 1 or number is a prime number
			while (number > 1 && number >= 2*divisor ) 
			{
				//if number can be evenly divisible by divisor, thus number is not a prime number
				if (0 == (number % divisor)) 
				{
					//set number to the quotient of number and divisor
					number /= divisor;
					//sub-self by 1 of divisor, because divisor certainly add by 1
					divisor--;
				}
				//if number can't evenly divisible by divisor, divisor add by 1, begin next loop
				//if number can evenly divisible by divisor, divisor will not change, begin next loop
				divisor++;
			}
			super.showAnswer( number );
		}
	}
}