package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;

	/**
	 * <B>Problem 23</B>
	 <div class="problem_content" role="problem">
	 <p>A perfect number is a number for which the sum of its proper divisors is exactly equal to the number. For example, the sum of the proper divisors of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect number.</p>
	 <p>A number <var>n</var> is called deficient if the sum of its proper divisors is less than <var>n</var> and it is called abundant if this sum exceeds <var>n</var>.</p>
	 <!-- <p>A number whose proper divisors are less than the number is called deficient and a number whose proper divisors exceed the number is called abundant.</p> -->
	 <p>As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the smallest number that can be written as the sum of two abundant numbers is 24. By mathematical analysis, it can be shown that all integers greater than 28123 can be written as the sum of two abundant numbers. However, this upper limit cannot be reduced any further by analysis even though it is known that the greatest number that cannot be expressed as the sum of two abundant numbers is less than this limit.</p>
	 <p>Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob23 extends Problem
	{
		public function Prob23()
		{
			var sums:Array = [];
			var abunds:Array = [];
			var tSum:int = 0;
			for(var i:int = 1;i<28124;i++)
			{
				tSum += i;
				if( isAbundantNumber(i) )
				{
					abunds.push(i);
				}
			}
			var aSum:int = 0;
			for(i = 0;i<abunds.length;i++) 
			{
				for(var j:int = i;j<abunds.length;j++)
				{
					sums[ abunds[i]+abunds[j] ] = "bingo";
				}
			}
			for (var n:String in sums) 
			{
				if( int(n) >= 28124 )
				{
					break;
				}
				aSum += int(n);
			}
			super.showAnswer(tSum - aSum);
		}
		
		private function isAbundantNumber(num:int):Boolean
		{
			return Utils.getDivisorSum(num) > num;
		}
	}
}