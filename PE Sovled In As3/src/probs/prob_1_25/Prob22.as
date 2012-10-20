package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;

	/**
	 * <B>Problem 22</B>
	 <div class="problem_content" role="problem">
	 <p>Using <a href="project/names.txt">names.txt</a> (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.</p>
	 <p>For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> 53 = 49714.</p>
	 <p>What is the total of all the name scores in the file?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob22 extends Problem
	{
		public function Prob22()
		{
			Utils.getDataFromExternal("external/prob22", setExternData);
		}
		
		protected override function setExternData(data:String):void
		{
			super.setExternData(data);
			var abc:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			var names:Array = data.split(",");
			var total:Number = 0;
			
			names.sort();
			for(var i:int = 0;i<names.length;i++)
			{
				var sum:int = 0;
				for(var j:int = 0;j<names[i].length;j++)
				{
					var index:int = abc.indexOf( (names[i] as String).charAt(j) );
					if( index >= 0 )
					{
						sum += index+1;
					}
				}
				total += sum*(i+1);
			}
			super.showAnswer(total);
		}
	}
}