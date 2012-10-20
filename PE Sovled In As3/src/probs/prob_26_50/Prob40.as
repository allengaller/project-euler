package probs.prob_26_50
{
	import probs.Problem;
	
	import utils.Utils;
	
	/**
	 * <B>Problem 40</B>
	 <div class="problem_content" role="problem">
	 <p>An irrational decimal fraction is created by concatenating the positive integers:</p>
	 <p style="text-align:center;">0.12345678910<span style="color:#dd0000;font-size:14pt;">1</span>112131415161718192021...</p>
	 <p>It can be seen that the 12<sup>th</sup> digit of the fractional part is 1.</p>
	 <p>If <i>d</i><sub><i>n</i></sub> represents the <i>n</i><sup>th</sup> digit of the fractional part, find the value of the following expression.</p>
	 <p style="text-align:center;"><i>d</i><sub>1</sub> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> <i>d</i><sub>10</sub> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> <i>d</i><sub>100</sub> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> <i>d</i><sub>1000</sub> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> <i>d</i><sub>10000</sub> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> <i>d</i><sub>100000</sub> <img src="images/symbol_times.gif" width="9" height="9" alt="×" border="0" style="vertical-align:middle;"> <i>d</i><sub>1000000</sub></p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob40 extends Problem
	{
		private var _madeGap:Boolean = false;
		private var _Gaps:Array = [1];
		
		public function Prob40()
		{
			var prod:int = 1;
			for( var i:int = 0;i<7;i++)
			{
				prod *= getSepcialBitNum( Math.pow(10,i) );
			}
			super.showAnswer( prod );
		}
		
		private function getSepcialBitNum( ctn:int ):int
		{
			trace("ctn:"+ctn);
			if( ctn < 1 )
			{
				return 0;
			}
			makeGap();
			for(var i:int = 0;i<10;i++)
			{
				if( ctn < _Gaps[i] )
				{
					break;
				}
			}
			var tar:int = (ctn - _Gaps[i-1])/i + Math.pow(10,i-1);
			trace("tar:"+tar);
			var bit:int = (ctn - _Gaps[i-1])%i;
			var bits:Array = Utils.getBitArray( tar ).reverse();
			trace("res:"+bits[ bit ]);
			return bits[ bit ];
		}
		
		private function makeGap():void
		{
			if(!_madeGap)
			{
				for (var i:int = 1;i<10;i++)
				{
					_Gaps.push( _Gaps[i-1] + 9*Math.pow(10,i-1)*i );
				}
				_madeGap = true;
			}
		}
	}
}