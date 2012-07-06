package probs
{
	import utils.Utils;

	public class Prob7 extends Problem
	{
		private var th:int = 10001;
		public function Prob7()
		{
			var num:Number = 2;
			var count:int = 0;
			while(count != th)
			{
				if(Utils.isPrimer(num))
				{
					count++;
					if(count == th)
					{
						break;
					}
				}
				num++;
			}
			super.showAnswer(num);
		}
	}
}