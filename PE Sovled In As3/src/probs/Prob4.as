package probs
{
	import utils.Utils;

	public class Prob4 extends Problem
	{
		public function Prob4()
		{
			var max:int = 0;
			for(var i:int = 999;i>=100;i--)
			{
				for(var j:int = 999;j>=100;j--)
				{
					if(Utils.isParlindrome(i*j) && i*j > max)
					{
						max = i*j;
					}
				}
			}
			showAnswer(max);
		}
	}
}