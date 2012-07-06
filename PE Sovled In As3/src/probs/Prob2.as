package probs
{
	import flash.display.Sprite;
	
	public class Prob2 extends Problem
	{
		private var length:int = 4000000;
		
		public function Prob2()
		{
			var a:int = 1;
			var b:int = 1;
			
			var temp:int = 0;
			var add:int = 0;
			while(b <= length)
			{
				temp = b;
				b += a;
				a = temp;
				if(b % 2 == 0 && b <= length)
				{
					add+=b;
				}
			}
			super.showAnswer(add);
		}
	}
}