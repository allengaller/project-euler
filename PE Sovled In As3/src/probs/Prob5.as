package probs
{
	import utils.Utils;

	public class Prob5 extends Problem
	{
		
		public function Prob5()
		{
			var exists:Array = [];
			var result:Number = 1;
			for(var i:int = 20;i > 0;i--)
			{
				result = i*result/Utils.gcd(i,result);
			}
			showAnswer(result);
		}
	}
}