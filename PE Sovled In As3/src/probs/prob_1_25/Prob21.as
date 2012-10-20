package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;
	
	/**
	 * <B>Problem 21</B>
	 <div class="problem_content" role="problem">
	 <p>Let d(<i>n</i>) be defined as the sum of proper divisors of <i>n</i> (numbers less than <i>n</i> which divide evenly into <i>n</i>).<br>
	 If d(<i>a</i>) = <i>b</i> and d(<i>b</i>) = <i>a</i>, where <i>a</i> <img src="images/symbol_ne.gif" width="11" height="10" alt="≠" border="0" style="vertical-align:middle;"> <i>b</i>, then <i>a</i> and <i>b</i> are an amicable pair and each of <i>a</i> and <i>b</i> are called amicable numbers.</p>
	 <p>For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.</p>
	 <p>Evaluate the sum of all the amicable numbers under 10000.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob21 extends Problem
	{
		public function Prob21()
		{
			var fuckD:int = 0;
			var geekNums:Array = [];
			for(var i:int = 2;i<10000;i++)
			{
				fuckD = funcD(i);
				if( fuckD != i && funcD( fuckD ) == i && geekNums.indexOf(i) < 0 )
				{
					geekNums.push(i);
				}
			}
			var sum:Number = 0;
			for each(var geek:int in geekNums)
			{
				sum += geek;
			}
			super.showAnswer(sum);
		}
		
		private function funcD(num:int):int
		{
			var divs:Array = Utils.getDivisors(num);
			var sum:int = 0;
			for each(var n:int in divs)
			{
				sum += n;
			}
			return sum;
		}
	}
}