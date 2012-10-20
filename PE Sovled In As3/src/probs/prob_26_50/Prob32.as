package probs.prob_26_50
{
	import probs.Problem;
	/**
	 * <B>Problem 32</B>
	 <div class="problem_content" role="problem">
	 <p>We shall say that an <var>n</var>-digit number is pandigital if it makes use of all the digits 1 to <var>n</var> exactly once; for example, the 5-digit number, 15234, is 1 through 5 pandigital.</p>
	 <p>The product 7254 is unusual, as the identity, 39 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 186 = 7254, containing multiplicand, multiplier, and product is 1 through 9 pandigital.</p>
	 <p>Find the sum of all products whose multiplicand/multiplier/product identity can be written as a 1 through 9 pandigital.</p>
	 <div class="info">HINT: Some products can be obtained in more than one way so be sure to only include it once in your sum.</div>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */	
	public class Prob32 extends Problem
	{
		public function Prob32()
		{
			super();
			var list:Object = {};
			var prod:int = 0;
			allPandigital(98, 983, 96334);
			//a*bbbb = cccc
			for(var i:int = 2;i<10;i++)
			{
				for(var j:int = 1234;j<9876;j++)
				{
					prod = i*j;
					if( allPandigital(i,j,prod) )
					{
						list[prod] = 1;
						trace( i,j,prod );
					}
				}
			}
			//aa*bbb = ccc
			for(i = 12;i<=98;i++)
			{
				for(j = 123;j<987;j++)
				{
					prod = i*j;
					if( allPandigital(i,j,prod) )
					{
						list[prod] = 1;
						trace( i,j,prod );
					}
				}
			}
			var sum:int = 0;
			for (var pd:String in list)
			{
				sum += int(pd);
			}
			super.showAnswerStr("sum is "+sum);
				
		}
		
		private function allPandigital( a:int, b:int, c:int ):Boolean
		{
			var str:String = a.toString().concat(b.toString().concat(c.toString()));
			var test:Array = [0,1,1,1,1,1,1,1,1,1];
			var k:int = 0;
			for (var i:int = 0;i<str.length;i++)
			{
				k = int(str.charAt(i));
				if( !k )
				{
					return false;
				}
				if( test[k] )
				{
					test[k] += 1;
				}
			}
			for( i = 1;i<=9;i++)
			{
				if( test[i] != 2 )
				{
					return false;
				}
			}
			return true;
		}
	}
}