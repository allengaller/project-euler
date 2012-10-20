package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 50</B>
	 <div class="problem_content" role="problem">
	 <p>The prime 41, can be written as the sum of six consecutive primes:</p>
	 <div style="text-align:center;">41 = 2 + 3 + 5 + 7 + 11 + 13</div>
	 <p>This is the longest sum of consecutive primes that adds to a prime below one-hundred.</p>
	 <p>The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.</p>
	 <p>Which prime, below one-million, can be written as the sum of the most consecutive primes?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob50 extends Problem
	{
		public function Prob50()
		{
			Utils.getPrimesUnderMillion( find );
		}
		
		private function find( list:Array ):void
		{
			var sum:int = 0;
			var loop:int = 0;
			var maxL:int = 1000000;
			var len:int = list.length;
			var maxC:int = 0;
			var c:int = 0;
			var maxS:int = 0;
			
			while(loop < len)
			{
				sum = 0;
				c = 0;
				for( var i:int = loop;i<len;i++)
				{
					sum += int(list[i]);
					
					if( sum < maxL && Utils.isPrimer( sum ) )
					{
						c = i - loop + 1;
					}
					else if( sum >= maxL )
					{
						sum -= int(list[i]);
						break;
					}
				}
				if( c > maxC )
				{
					maxS = sum;
					maxC = c;
				}
				loop ++;
			}
			super.showAnswerStr("max loop: "+maxC+" max prime："+maxS);
		}
	}
}