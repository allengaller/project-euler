package probs
{
	
	import utils.BigInt;

	/**
	 * <B>Problem 97</B>
	 <div class="problem_content" role="problem">
	 <p>The first known prime found to exceed one million digits was discovered in 1999, and is a Mersenne prime of the form 2<sup>6972593</sup><img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">1; it contains exactly 2,098,960 digits. Subsequently other Mersenne primes, of the form 2<sup><i>p</i></sup><img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">1, have been found which contain more digits.</p>
	 <p>However, in 2004 there was found a massive non-Mersenne prime which contains 2,357,207 digits: 28433<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">2<sup>7830457</sup>+1.</p>
	 <p>Find the last ten digits of this prime number.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob97 extends Problem
	{
		private const MAX_POW:int = 7830457;
		
		public function Prob97()
		{
			var result:BigInt = BigInt.pow(2, MAX_POW, 10).prod( new BigInt(28433) ).add(1);
			super.showAnswerStr( result.toString().substr( result.digits - 10 ) );
		}
	}
}