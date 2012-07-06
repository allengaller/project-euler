package probs
{
	public class Prob14 extends Problem
	{
		public function Prob14()
		{
			var maxLen:int = 0;
			var maxNum:int = 0;
			var currLen:int = 0;
			for(var i:int = 999999;i>500000;i-=2)
			{
				currLen = chainLenth(i);
				if(currLen > maxLen)
				{
					maxLen = currLen;
					maxNum = i;
				}
			}
			showAnswer(maxNum);
		}
		
		private function chainLenth(num:int):int
		{
			var count:int = 1;
			while(num != 1)
			{
				count ++;
				num % 2 == 0 ? num /= 2 : num = 3*num+1;
			}
			return count;
		}
	}
}