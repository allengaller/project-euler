package probs
{
	import utils.Utils;

	public class Prob21 extends Problem
	{
		public function Prob21()
		{
			var fuckD:int = 0;
			var geekNums:Array = [];
			for(var i:int = 2;i<10000;i++)
			{
				fuckD = funcD(i);
				if( fuckD != i && funcD( fuckD ) == i && geekNums.indexOf(i) < 0 )
				{
					geekNums.push(i);
				}
			}
			var sum:Number = 0;
			for each(var geek:int in geekNums)
			{
				sum += geek;
			}
			super.showAnswer(sum);
		}
		
		private function funcD(num:int):int
		{
			var divs:Array = Utils.getDivisors(num);
			var sum:int = 0;
			for each(var n:int in divs)
			{
				sum += n;
			}
			return sum;
		}
	}
}