package probs
{
	import utils.Utils;

	/**
	 * <B>Problem 53</B>
	 <div class="problem_content" role="problem">
	 <p>There are exactly ten ways of selecting three from five, 12345:</p>
	 <p style="text-align:center;">123, 124, 125, 134, 135, 145, 234, 235, 245, and 345</p>
	 <p>In combinatorics, we use the notation, <sup>5</sup>C<sub>3</sub> = 10.</p>
	 <p>In general,</p>
	 <div style="text-align:center;">
	 <table>
	 <tbody><tr>
	 <td><sup><var>n</var></sup>C<sub><var>r</var></sub> = </td>
	 <td><div style="text-align:center;"><var>n</var>!<br><span style="border-top:1px solid #000;"><var>r</var>!(<var>n<img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">r</var>)!</span></div></td>
	 <td>,where <var>r</var> <img src="images/symbol_le.gif" width="10" height="12" alt="≤" border="0" style="vertical-align:middle;"> <var>n</var>, <var>n</var>! = <var>n</var><img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">(<var>n</var><img src="images/symbol_minus.gif" width="9" height="3" alt="−" border="0" style="vertical-align:middle;">1)<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">...<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">3<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">2<img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;">1, and 0! = 1.</td>
	 </tr>
	 </tbody></table>
	 </div>
	 <p>It is not until <var>n</var> = 23, that a value exceeds one-million: <sup>23</sup>C<sub>10</sub> = 1144066.</p>
	 <p>How many, not necessarily distinct, values of &nbsp;<sup><var>n</var></sup>C<sub><var>r</var></sub>, for 1 <img src="images/symbol_le.gif" width="10" height="12" alt="≤" border="0" style="vertical-align:middle;"> <var>n</var> <img src="images/symbol_le.gif" width="10" height="12" alt="≤" border="0" style="vertical-align:middle;"> 100, are greater than one-million?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob53 extends Problem
	{
		public function Prob53()
		{
			super();
			var all:int = 5050;//1 + 2 + ... + 100
			var lim:int = 0;
			var lt:int = 0;
			for( var i:int = 1; i<=100; i++ )
			{
				lt++;
				lim = Math.floor( i/2 );
				for( var j:int = 1;j <= lim;j++ )
				{
					var cob:Number = comb(i,j);
					if( Math.round( cob ) <= 1000000 )
					{
						lt += (j == i/2 ? 1 : 2); 
					}
				}
			}
			super.showAnswer( all - lt );
		}
		
		private function comb( max:int, r:int ):Number
		{
			if( max < r )
			{
				return 0;
			}
			var nume:Number = 1;
			for(var i:int = max;i>r;i--)
			{
				nume *= i;
			}
			return nume / Utils.fact( max - r ) ;
		}
	}
}