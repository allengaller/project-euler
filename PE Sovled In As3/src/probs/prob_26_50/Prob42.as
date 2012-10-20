package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;	
	
	/**
	 * <B>Problem 42</B>
	 <div class="problem_content" role="problem">
	 <p>The <i>n</i><sup>th</sup> term of the sequence of triangle numbers is given by, <i>t<sub>n</sub></i> = ½<i>n</i>(<i>n</i>+1); so the first ten triangle numbers are:</p>
	 <p style="text-align:center;">1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...</p>
	 <p>By converting each letter in a word to a number corresponding to its alphabetical position and adding these values we form a word value. For example, the word value for SKY is 19 + 11 + 25 = 55 = <i>t</i><sub>10</sub>. If the word value is a triangle number then we shall call the word a triangle word.</p>
	 <p>Using <a href="project/words.txt">words.txt</a> (right click and 'Save Link/Target As...'), a 16K text file containing nearly two-thousand common English words, how many are triangle words?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob42 extends Problem
	{
		private var _TriNums:Array = [];
		private var charCodeA:int = 0;
		public function Prob42()
		{
			super();
			var str:String = "A";
			charCodeA = str.charCodeAt(0);
			for(var i:int = 1;i<100;i++)
			{
				_TriNums.push( i*(i+1) / 2 );
			}
			Utils.getDataFromExternal( "external/prob42.txt", solve )
		}
		
		private function solve( data:String ):void
		{
			var words:Array = data.split(",");
			var cnt:int = 0;
			for each(var word:String in words)
			{
				word = word.substr( 1,word.length-2 );
				if( _TriNums.indexOf( calWord(word) ) >= 0 )
				{
					cnt ++;
				}
			}
			super.showAnswer( cnt );
		}
		
		private function calWord( word:String ):int
		{
			if( !word )
			{
				return 0;
			}
			var sum:int = 0;
			for(var i:int = 0;i<word.length;i++)
			{
				sum += word.charCodeAt( i ) - charCodeA + 1;
			}
			return sum;
		}
	}
}