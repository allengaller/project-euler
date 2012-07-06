package probs
{
	public class Prob9 extends Problem
	{
		public function Prob9()
		{
			var c:int = 499;
			var a:int = 1;
			var b:int = c-a;
			var product:int = 0;
			var find:Boolean = false;
			
			for(;c>2;c--)
			{
				for(a=1;a<c;a++)
				{
					b = 1000 - c - a;
					if(a*b == 500000-1000*c)
					{
						product = a*b*c;
						find = true;
						break;
					}
				}
				if(find)
				{
					break;
				}
			}
			showAnswer(product);
		}
	}
}