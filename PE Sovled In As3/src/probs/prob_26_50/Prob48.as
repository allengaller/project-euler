package probs.prob_26_50
{
	import utils.BigInt;
	import probs.Problem;
	/**
	 * <B>Problem 48</B>
	 <div class="problem_content" role="problem">
	 <p>The series, 1<sup>1</sup> + 2<sup>2</sup> + 3<sup>3</sup> + ... + 10<sup>10</sup> = 10405071317.</p>
	 <p>Find the last ten digits of the series, 1<sup>1</sup> + 2<sup>2</sup> + 3<sup>3</sup> + ... + 1000<sup>1000</sup>.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob48 extends Problem
	{
		public function Prob48()
		{
			super();
			var sum:BigInt = new BigInt("0");
			var temp:BigInt;
			for(var i:int = 1;i<=1000;i++)
			{
				temp = new BigInt(i.toString());
				for (var j:int = 0;j<i-1;j++)
				{
					temp = temp.product( i,10 );
				}
				sum = sum.add( temp );
			}
			super.showAnswerStr( sum.toString() );
		}
	}
}