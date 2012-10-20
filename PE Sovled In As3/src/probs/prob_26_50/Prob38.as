package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 38</B>
	 <div class="problem_content" role="problem">
	 <p>Take the number 192 and multiply it by each of 1, 2, and 3:</p>
	 <blockquote>192 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 1 = 192<br>
	 192 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 2 = 384<br>
	 192 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 3 = 576</blockquote>
	 <p>By concatenating each product we get the 1 to 9 pandigital, 192384576. We will call 192384576 the concatenated product of 192 and (1,2,3)</p>
	 <p>The same can be achieved by starting with 9 and multiplying by 1, 2, 3, 4, and 5, giving the pandigital, 918273645, which is the concatenated product of 9 and (1,2,3,4,5).</p>
	 <p>What is the largest 1 to 9 pandigital 9-digit number that can be formed as the concatenated product of an integer with (1,2, ... , <var>n</var>) where <var>n</var> <img src="images/symbol_gt.gif" width="10" height="10" alt="&gt;" border="0" style="vertical-align:middle;"> 1?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob38 extends Problem
	{
		public function Prob38()
		{
			super();
			var h:int = 0;
			var f:Array = [];
			var df:Array = [];
			//9*** -> 1****
			var j:int = 0;
			var findone:Boolean = false;
			var max:int = 0;
			for( var i:int = 9234;i<9876;i++)
			{
				f = Utils.getBitArray(i).slice(0,3);
				df = Utils.getBitArray(i*2).slice(0,4);
				f = f.concat( df );
				h = f.shift();
				if( h != 9 || h != 0 || h != 1)
				{
					findone = true;
					while( f.length )
					{
						if( f.indexOf(9)>=0 || f.indexOf(1)>= 0 || f.indexOf(0)>=0 || f.indexOf(h) >= 0 )
						{
							findone = false;
							break;
						}
						h = f.shift();
					}
					if( findone )
					{
						max = i;
						trace(max+""+max*2);
					}					
				}
			}
			super.showAnswerStr( max == 0 ? "918273645" : max+""+max*2 );
		}
	}
}