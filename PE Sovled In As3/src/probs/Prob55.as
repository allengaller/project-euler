package probs
{
	import utils.BigInt;
	import utils.Utils;

	
	/**
	 * <B>Problem 55</B>
	 <div class="problem_content" role="problem">
	 <p>If we take 47, reverse and add, 47 + 74 = 121, which is palindromic.</p>
	 <p>Not all numbers produce palindromes so quickly. For example,</p>
	 <p style="margin-left:50px;">349 + 943 = 1292,<br>
	 1292 + 2921 = 4213<br>
	 4213 + 3124 = 7337</p>
	 <p>That is, 349 took three iterations to arrive at a palindrome.</p>
	 <p>Although no one has proved it yet, it is thought that some numbers, like 196, never produce a palindrome. A number that never forms a palindrome through the reverse and add process is called a Lychrel number. Due to the theoretical nature of these numbers, and for the purpose of this problem, we shall assume that a number is Lychrel until proven otherwise. In addition you are given that for every number below ten-thousand, it will either (i) become a palindrome in less than fifty iterations, or, (ii) no one, with all the computing power that exists, has managed so far to map it to a palindrome. In fact, 10677 is the first number to be shown to require over fifty iterations before producing a palindrome: 4668731596684224866951378664 (53 iterations, 28-digits).</p>
	 <p>Surprisingly, there are palindromic numbers that are themselves Lychrel numbers; the first example is 4994.</p>
	 <p>How many Lychrel numbers are there below ten-thousand?</p>
	 <p class="info">NOTE: Wording was modified slightly on 24 April 2007 to emphasise the theoretical nature of Lychrel numbers.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob55 extends Problem
	{
		public function Prob55() 
		{
			var ct:int = 0;
			for(var i:int = 0;i<10000;i++)
			{
				if( isLychrel(i) )
				{
					trace( i );
					ct++;
				}
			}
			super.showAnswer( ct );
		}
		
		private function isLychrel( num:int ):Boolean
		{
			var ori:BigInt = new BigInt( num.toString() );
			var reverse:BigInt = new BigInt( "0" );
			for(var i:int = 0;i<50;i++)
			{
				
				reverse = new BigInt( Utils.strReverse(ori.toString()) );
				ori = ori.add( reverse );
				if( Utils.isParlindrome( ori.toString() ) )
				{
					trace( num, ori );
					return false;
				}
			}
			return true;
		}
	}
}