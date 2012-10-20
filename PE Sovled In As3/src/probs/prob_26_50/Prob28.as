package probs.prob_26_50
{
	import probs.Problem;
	
	/**
	 * <B>Problem 28</B>
	 <div class="problem_content" role="problem">
	 <p>Starting with the number 1 and moving to the right in a clockwise direction a 5 by 5 spiral is formed as follows:</p>
	 <p style="text-align:center;font-family:courier new;"><span style="color:#ff0000;font-family:courier new;"><b>21</b></span> 22 23 24 <span style="color:#ff0000;font-family:courier new;"><b>25</b></span><br>
	 20 &nbsp;<span style="color:#ff0000;font-family:courier new;"><b>7</b></span> &nbsp;8 &nbsp;<span style="color:#ff0000;font-family:courier new;"><b>9</b></span> 10<br>
	 19 &nbsp;6 &nbsp;<span style="color:#ff0000;font-family:courier new;"><b>1</b></span> &nbsp;2 11<br>
	 18 &nbsp;<span style="color:#ff0000;font-family:courier new;"><b>5</b></span> &nbsp;4 &nbsp;<span style="color:#ff0000;font-family:courier new;"><b>3</b></span> 12<br>
	 <span style="color:#ff0000;font-family:courier new;"><b>17</b></span> 16 15 14 <span style="color:#ff0000;font-family:courier new;"><b>13</b></span></p>
	 <p>It can be verified that the sum of the numbers on the diagonals is 101.</p>
	 <p>What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob28 extends Problem
	{
		public function Prob28()
		{
			var n:int = 1001;
			
			var sum:int = 1;
			var lastMax:int = 1;
			var currMin:int = 0;
			for(var i:int = 1;i<=(n-1)/2;i++)
			{
				currMin = lastMax + (2*i);
				sum += currMin;
				sum += currMin + (2*i)*1;
				sum += currMin + (2*i)*2;
				sum += currMin + (2*i)*3;
				lastMax = currMin + (2*i)*3;
			}
			super.showAnswer(sum);
		}
	}
}