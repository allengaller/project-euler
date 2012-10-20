package probs.prob_26_50
{
	import probs.Problem;
	
	/**
	 * <B>Problem 39</B>
	 <div class="problem_content" role="problem">
	 <p>If <i>p</i> is the perimeter of a right angle triangle with integral length sides, {<i>a</i>,<i>b</i>,<i>c</i>}, there are exactly three solutions for <i>p</i> = 120.</p>
	 <p style="\'text-align:center;\'">{20,48,52}, {24,45,51}, {30,40,50}</p>
	 <p>For which value of <i>p</i> <img src="images/symbol_le.gif" width="10" height="12" alt="≤" border="0" style="vertical-align:middle;"> 1000, is the number of solutions maximised?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob39 extends Problem
	{
		public function Prob39()
		{
			var maxct:int = 0;
			var max:int = 0;
			var list:Object = {};
			var sqrt:Number = 0;
			for(var i:int = 1;i<500;i++)
			{
				for(var j:int = 1;j<500-i;j++)
				{
					sqrt = Math.sqrt( i*i+j*j );
					if( sqrt is int )
					{
						if( !list[i+j+sqrt] )
						{
							list[i+j+sqrt] = 1;
						}
						else
						{
							list[i+j+sqrt] += 1;
						}
						
					}
				}
			}
			for (var num:String in list)
			{
				if( list[num] > maxct )
				{
					maxct = list[num];
					max = int(num);
				}
			}
			super.showAnswerStr( "MaxSoulutions:"+maxct+" Max num:"+max);
		}
	}
}