package probs
{
	public class Prob6 extends Problem
	{
		private var range:int = 100;
		public function Prob6()
		{
			var result:int = 0;
			
			for(var i:int = 1;i<=range;i++)
			{
				for(var j:int = 1;j<=range;j++)
				{
					if(i == j)
					{
						continue;
					}
					result += i*j;
				}
			}
			showAnswer(result);
		}
	}
}