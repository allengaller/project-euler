package probs.prob_26_50
{
	import probs.Problem;
	
	/**
	 * <B>Problem 31</B>
	 <div class="problem_content" role="problem">
	 <p>In England the currency is made up of pound, £, and pence, p, and there are eight coins in general circulation:</p>
	 <blockquote>1p, 2p, 5p, 10p, 20p, 50p, £1 (100p) and £2 (200p).</blockquote>
	 <p>It is possible to make £2 in the following way:</p>
	 <blockquote>1<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">£1 + 1<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">50p + 2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">20p + 1<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">5p + 1<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">2p + 3<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">1p</blockquote>
	 <p>How many different ways can £2 be made using any number of coins?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob31 extends Problem
	{
		public function Prob31()
		{
			var coins:Array = [1,2,5,10,20,50,100,200];
			var ways:Array = [1];
			for (var i:int = 0;i<coins.length;i++)
			{
				for(var j:int = coins[i];j <= 200;j++)
				{
					if(!ways[j])
					{
						ways[j] = 0;
					}
					ways[j] += ways[j-coins[i]];
				}
			}
			super.showAnswerStr( "ways are :"+ways[200] );
		}
	}
}