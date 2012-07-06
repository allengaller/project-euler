package probs
{
	import utils.Utils;

	public class Prob12 extends Problem
	{
		public function Prob12()
		{
			var st:int = 8;
			var sum:Number = 28;
			while(Utils.getFactorNum(sum) < 500)
			{
				sum+=st++;
			}
			showAnswer(sum);
		}
	}
}