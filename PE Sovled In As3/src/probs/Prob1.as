package probs
{
	import flash.display.Sprite;
	
	public class Prob1 extends Problem
	{
		private var length:int = 1000;
		
		public function Prob1()
		{
			var num:int = 3;
			var add:int = 0;
			while(num < length)
			{
				if(num%3 == 0 || num%5 == 0)
				{
					add += num;
				}
				num++;
			}
			super.showAnswer(add);
		}
	}
}