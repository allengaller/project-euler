package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 33</B>
	 <div class="problem_content" role="problem">
	 <p>The fraction <sup>49</sup>/<sub>98</sub> is a curious fraction, as an inexperienced mathematician in attempting to simplify it may incorrectly believe that <sup>49</sup>/<sub>98</sub> = <sup>4</sup>/<sub>8</sub>, which is correct, is obtained by cancelling the 9s.</p>
	 <p>We shall consider fractions like, <sup>30</sup>/<sub>50</sub> = <sup>3</sup>/<sub>5</sub>, to be trivial examples.</p>
	 <p>There are exactly four non-trivial examples of this type of fraction, less than one in value, and containing two digits in the numerator and denominator.</p>
	 <p>If the product of these four fractions is given in its lowest common terms, find the value of the denominator.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob33 extends Problem
	{
		public function Prob33()
		{
			super();
			
			var iBits:Array = [];
			var jBits:Array = [];
			var ct:int = 0;
			var nume:int = 1;
			var deno:int = 1;
			
			for( var i:int = 10;i<100;i++)
			{
				iBits = Utils.getBitArray( i );
				for( var j:int = i+1;j<100;j++)
				{
					jBits = Utils.getBitArray( j );
					if( iBits[0] == jBits[1] && iBits[1]*j == jBits[0]*i )
					{
						trace( i );
						trace( j );
						deno *= j;
						nume *= i;
						ct ++;
						if( ct == 4 )
						{
							var gcd:int = Utils.gcd( nume, deno );
							trace( gcd );
							super.showAnswer( deno/gcd );
							return;
						}
					}
				}
			}
			super.showAnswerStr( "Not FOUND!");
		}
	}
}