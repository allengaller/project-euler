package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;

	/**
	 * <B>Problem 36</B>
	 <div class="problem_content" role="problem">
	 <p>The decimal number, 585 = 1001001001<sub>2</sub> (binary), is palindromic in both bases.</p>
	 <p>Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.</p>
	 <p class="info">(Please note that the palindromic number, in either base, may not include leading zeros.)</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob36 extends Problem
	{
		public function Prob36()
		{
			super();
			var binStr:String = "";
			var sum:int = 0;
			for (var i:int = 1;i<=1000000;i++)
			{
				binStr = i.toString( 2 );
				if( Utils.isParlindrome(i) && Utils.isParlindrome(binStr) )
				{
					sum += i;
					trace( i +" "+binStr);
				}
			}
			super.showAnswer( sum );
		}
	}
}