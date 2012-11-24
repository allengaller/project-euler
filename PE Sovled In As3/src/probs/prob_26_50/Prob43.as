package probs.prob_26_50
{
	import probs.Problem;
	
	public class Prob43 extends Problem
	{
		public function Prob43()
		{
			super();
			for( var i:int = 101;i<1000;i++ )
			{
				if( i%17 == 0 )
				{
					trace( i );
				}
			}
		}
	}
}