package probs
{
	import utils.Utils;

	public class Prob286 extends Problem
	{
		private var probility:Number = 0.2;
		private var goalNum:int = 20;
		private var range:int = 50;
		
		public function Prob286()
		{
			super.showAnswer( Math.pow( ( Utils.fact(50)*Utils.fact(50)*50 ) / ( Utils.fact(30)*Utils.fact(20) ) , 0.02) ) ;
		}
	}
}