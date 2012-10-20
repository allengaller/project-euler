package probs.prob_1_25
{
	import utils.BigInt;
	import probs.Problem;
	
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
		private var len:int = 1000;
		public function Prob25()
		{
			var ct:int = 2;
			var fb_a:BigInt = new BigInt("1");
			var fb_b:BigInt = new BigInt("1");
			
			var temp:BigInt = new BigInt("1");
			
			while(fb_b.stri.length < len)
			{
				temp = new BigInt(fb_b.stri);
				fb_b = fb_b.add(fb_a);
				fb_a = new BigInt(temp.stri);
				ct++;
			}
			super.showAnswer(ct);
		}
	}
}