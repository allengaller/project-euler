package probs
{
	import utils.BigInt;

	public class Prob16 extends Problem
	{
		public function Prob16()
		{
			var st:BigInt = new BigInt("2");
			for(var i:int = 1;i<1000;i++)
			{
				st = st.add(st);
			}
			var sum:int = 0;
			for(i = 0;i<st.stri.length;i++)
			{
				sum += int(st.stri.charAt(i));
			}
			super.showAnswer(sum);
		}
	}
}
