package probs.prob_1_25
{
	import probs.Problem;
	
	/**
	 * <B>Problem 9</B>
	 <div class="problem_content" role="problem">
	 <p>A Pythagorean triplet is a set of three natural numbers, <var>a</var> <img src="images/symbol_lt.gif" width="10" height="10" alt="&lt;" border="0" style="vertical-align:middle;"> <var>b</var> <img src="images/symbol_lt.gif" width="10" height="10" alt="&lt;" border="0" style="vertical-align:middle;"> <var>c</var>, for which,</p>
	 <div style="text-align:center;"> <var>a</var><sup>2</sup> + <var>b</var><sup>2</sup> = <var>c</var><sup>2</sup></div>
	 <p>For example, 3<sup>2</sup> + 4<sup>2</sup> = 9 + 16 = 25 = 5<sup>2</sup>.</p>
	 <p>There exists exactly one Pythagorean triplet for which <var>a</var> + <var>b</var> + <var>c</var> = 1000.<br>Find the product <var>abc</var>.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob9 extends Problem
	{
		public function Prob9()
		{
			var c:int = 499;
			var a:int = 1;
			var b:int = c-a;
			var product:int = 0;
			var find:Boolean = false;
			
			for(;c>2;c--)
			{
				for(a=1;a<c;a++)
				{
					b = 1000 - c - a;
					if(a*b == 500000-1000*c)
					{
						product = a*b*c;
						find = true;
						break;
					}
				}
				if(find)
				{
					break;
				}
			}
			showAnswer(product);
		}
	}
}