package probs
{
	import utils.BigInt;

	public class Prob20 extends Problem
	{
		public function Prob20()
		{
			var i:int = 1;
			var bigNum:BigInt = new BigInt("1");
			while( i < 100 )
			{
				bigNum = bigNum.product(++i);
			}
			var sum:int = 0;
			for(i = 0;i<bigNum.stri.length;i++)
			{
				sum += int(bigNum.stri.charAt(i));
			}
			super.showAnswer(sum);
		}
	}
}