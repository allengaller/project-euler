package probs
{
	public class Prob17 extends Problem
	{
		public function Prob17()
		{
			super();
			var one2nine:String = "onetwothreefourfivesixseveneightnine";
			var ten2nineteen:String = "teneleventwelvethirteenfourteenfifteensixteenseventeeneighteennineteen";
			var twen2ninety:String = "twentythirtyfortyfiftysixtyseventyeightyninety";
			var hundredAnd:String = "hundredAnd";
			var hundred:String = "hundred";
			var oneThunsand:String = "oneThousand";
			
			var _1to99:int = one2nine.length + ten2nineteen.length + twen2ninety.length*10 + one2nine.length * 8;
			
			var _100to999:int = _1to99*9 + hundredAnd.length*99*9 + 99*one2nine.length + one2nine.length +9*hundred.length;
			
			var _1000:int = oneThunsand.length;
			
			super.showAnswer(_1to99 + _100to999 + _1000);
		}
	}
}