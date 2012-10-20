package probs
{
	import utils.Utils;
	
	/**
	 * <B>Problem 52</B>
	 <div class="problem_content" role="problem">
	 <p>It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.</p>
	 <p>Find the smallest positive integer, <i>x</i>, such that 2<i>x</i>, 3<i>x</i>, 4<i>x</i>, 5<i>x</i>, and 6<i>x</i>, contain the same digits.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob52 extends Problem
	{
		public function Prob52()
		{
			var i:int = 100;
			var p:int = 200;
			var pow:int = 2;
			var find:Boolean = false;
			
			while(i < 10000000)
			{
				if( i>=p )
				{
					i += 8*Math.pow( 10, pow++ );
					p = 2*Math.pow( 10, pow );
				}
				find = true;
				for( var j:int = 2;j<7;j++)
				{
					if( !hasSameDigits( i, j*i) )
					{
						find = false;
						break;
					}
				}
				if( find )
				{
					super.showAnswer( i );
					break;
				}
				i++;
			}
		}
		
		private function hasSameDigits( num1:int, num2:int ):Boolean
		{
			var d1:Array = Utils.getBitArray( num1 );
			var d2:Array = Utils.getBitArray( num2 );
			if( d1.length != d2.length )
			{
				return false;
			}
			for each (var dt:int in d1)
			{
				if( d2.indexOf(dt) < 0 )
				{
					return false;
				}
			}
			return true;
		}
		
	}
}