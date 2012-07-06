package probs
{
	import utils.Utils;

	public class Prob10 extends Problem
	{
		private var add:int = 0;
		private var start:int = 3;
		private var end:int = 2000000;
		
		public function Prob10()
		{
			var add:Number = 0;
			for(var i:int = start;i<end;i+=2)
			{
				if(Utils.isPrimer(i))
				{
					add += i;
				}
			}
			showAnswer(add+2);
		}
	}
}