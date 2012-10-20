package probs.prob_1_25
{
	import probs.Problem;

	/**
	 * <B>Problem 17</B>
	 <div class="problem_content" role="problem">
	 <p>If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.</p>
	 <p>If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used? </p>
	 <br>
	 <p class="info"><b>NOTE:</b> Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
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