package probs.prob_26_50
{
	import probs.Problem;
	
	/**
	 * <B>Problem 26</B>
	 <div class="problem_content" role="problem">
	 <p>A unit fraction contains 1 in the numerator. The decimal representation of the unit fractions with denominators 2 to 10 are given:</p>
	 <blockquote>
	 <table>
	 <tbody><tr>
	 <td><sup>1</sup>/<sub>2</sub></td><td>=&nbsp;</td><td>0.5</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>3</sub></td><td>=&nbsp;</td><td>0.(3)</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>4</sub></td><td>=&nbsp;</td><td>0.25</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>5</sub></td><td>=&nbsp;</td><td>0.2</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>6</sub></td><td>=&nbsp;</td><td>0.1(6)</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>7</sub></td><td>=&nbsp;</td><td>0.(142857)</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>8</sub></td><td>=&nbsp;</td><td>0.125</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>9</sub></td><td>=&nbsp;</td><td>0.(1)</td>
	 </tr>
	 <tr>
	 <td><sup>1</sup>/<sub>10</sub></td><td>=&nbsp;</td><td>0.1</td>
	 </tr>
	 </tbody></table>
	 </blockquote>
	 <p>Where 0.1(6) means 0.166666..., and has a 1-digit recurring cycle. It can be seen that <sup>1</sup>/<sub>7</sub> has a 6-digit recurring cycle.</p>
	 <p>Find the value of <i>d</i> <img src="images/symbol_lt.gif" width="10" height="10" alt="&lt;" border="0" style="vertical-align:middle;"> 1000 for which <sup>1</sup>/<sub><i>d</i></sub> contains the longest recurring cycle in its decimal fraction part.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob26 extends Problem
	{
		public function Prob26()
		{
			var maxLen:int = 0;
			var maxNum:int = 0;
			
			var dividend:int = 10;
			
			var stacks:Array = [];
			
			var nextDividend:int = 0;
			var divisor:int = 0;
			var tempLen:int = 0;
			
			for (var i:int = 2;i<1000;i++)
			{
				if( i < 1000 )
				{
					dividend = 1000;
				}
				if( i < 100 )
				{
					dividend = 100;
				}
				if( i < 10 )
				{
					dividend = 10;
				}
				stacks = [];
				do
				{
					nextDividend = (dividend % i)*10;
					stacks.push( dividend );
					dividend = nextDividend;
				}while( nextDividend != 0 && stacks.indexOf( nextDividend ) < 0 );
				
				stacks.push( nextDividend ); 
				if( nextDividend == 0 )
				{
					continue;
				}
				tempLen = stacks.lastIndexOf( nextDividend ) - stacks.indexOf( nextDividend );
				if( tempLen > maxLen )
				{
					maxLen = tempLen;
					maxNum = i;
				}
			}
			super.showAnswerStr("maxNum:" + maxNum + " maxLen:"+maxLen);
		}
	}
}