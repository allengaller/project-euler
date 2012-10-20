package probs.prob_1_25
{
	import utils.BigInt;
	import probs.Problem;

	/**
	 * <B>Problem 16</B>
	 <div class="problem_content" role="problem">
	 <p>2<sup>15</sup> = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.</p>
	 <p>What is the sum of the digits of the number 2<sup>1000</sup>?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob16 extends Problem
	{
		public function Prob16()
		{
			var st:BigInt = new BigInt("2");
			for(var i:int = 1;i<1000;i++)
			{
				st = st.add(st);
			}
			var sum:int = 0;
			for(i = 0;i<st.stri.length;i++)
			{
				sum += int(st.stri.charAt(i));
			}
			super.showAnswer(sum);
		}
	}
}
