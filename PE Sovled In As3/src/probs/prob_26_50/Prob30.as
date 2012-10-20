package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 30</B>
	 <div class="problem_content" role="problem">
	 <p>Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:</p>
	 <blockquote>1634 = 1<sup>4</sup> + 6<sup>4</sup> + 3<sup>4</sup> + 4<sup>4</sup><br>
	 8208 = 8<sup>4</sup> + 2<sup>4</sup> + 0<sup>4</sup> + 8<sup>4</sup><br>
	 9474 = 9<sup>4</sup> + 4<sup>4</sup> + 7<sup>4</sup> + 4<sup>4</sup></blockquote>
	 <p class="info">As 1 = 1<sup>4</sup> is not a sum it is not included.</p>
	 <p>The sum of these numbers is 1634 + 8208 + 9474 = 19316.</p>
	 <p>Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob30 extends Problem
	{
		public function Prob30()
		{
			var sum:int = 0;
			for( var i:int = 2;i<1000000;i++)
			{
				if( fitFifthPow(i) )
				{
					sum += i;
					trace( i );
				}
			}
			super.showAnswer( sum );
		}
		
		private function fitFifthPow( num:int ):Boolean
		{
			var bits:Array = Utils.getBitArray( num );
			var sum:int = 0;
			for each ( var i:int in bits )
			{
				sum += i*i*i*i*i;
			}
			return sum == num;
		}
	}
}