package probs.prob_1_25
{
	import probs.Problem;
	
	import utils.BigInt;
	
	/**
	 * <B>Problem 25</B>
	 <div class="problem_content" role="problem">
	 <p>The Fibonacci sequence is defined by the recurrence relation:</p>
	 <blockquote>F<sub><i>n</i></sub> = F<sub><i>n</i><img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">1</sub> + F<sub><i>n</i><img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">2</sub>, where F<sub>1</sub> = 1 and F<sub>2</sub> = 1.</blockquote>
	 <p>Hence the first 12 terms will be:</p>
	 <blockquote>F<sub>1</sub> = 1<br>
	 F<sub>2</sub> = 1<br>
	 F<sub>3</sub> = 2<br>
	 F<sub>4</sub> = 3<br>
	 F<sub>5</sub> = 5<br>
	 F<sub>6</sub> = 8<br>
	 F<sub>7</sub> = 13<br>
	 F<sub>8</sub> = 21<br>
	 F<sub>9</sub> = 34<br>
	 F<sub>10</sub> = 55<br>
	 F<sub>11</sub> = 89<br>
	 F<sub>12</sub> = 144</blockquote>
	 <p>The 12th term, F<sub>12</sub>, is the first term to contain three digits.</p>
	 <p>What is the first term in the Fibonacci sequence to contain 1000 digits?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob25 extends Problem
	{
		private const LEN:int = 1000;
		public function Prob25()
		{
			var ct:int = 2;
			var a:String = "1";
			var b:String = "1";
			var tmp:String = "1";
			
			while(b.length < LEN)
			{
				tmp = b;
				b = BigInt.strAdd( b, a );
				a = tmp;
				ct++;
			}
			super.showAnswer(ct);
		}
	}
}