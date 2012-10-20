package probs.prob_1_25
{
	import utils.Utils;
	import probs.Problem;
	
	/**
	 * <B>Problem 24</B>
	 <div class="problem_content" role="problem">
	 <p>A permutation is an ordered arrangement of objects. For example, 3124 is one possible permutation of the digits 1, 2, 3 and 4. If all of the permutations are listed numerically or alphabetically, we call it lexicographic order. The lexicographic permutations of 0, 1 and 2 are:</p>
	 <p style="text-align:center;">012&nbsp; &nbsp;021&nbsp; &nbsp;102&nbsp; &nbsp;120&nbsp; &nbsp;201&nbsp; &nbsp;210</p>
	 <p>What is the millionth lexicographic permutation of the digits 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9?</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob24 extends Problem
	{
		
		public function Prob24()
		{
			var n:int = 1000000;
			var initArr:Array = [0,1,2,3,4,5,6,7,8,9];
			var resArr:Array = [];
			
			var quickMode:Boolean = false;
			var fact:int = 0;
			var index:int = 0;
			var temp:int = 0;
			while( initArr.length )
			{
				if( quickMode )
				{
					resArr.push( initArr.pop() );
				}
				else
				{
					fact = Utils.fact( initArr.length - 1 );
					temp = n%fact;
					if(  temp == 0 )
					{
						quickMode = true;
						resArr.push( initArr[ n/fact - 1 ] );
						initArr.splice( n/fact - 1, 1 );
					}
					else
					{
						index = Math.ceil(n/fact) - 1;
						resArr.push( initArr[index] );
						initArr.splice( index, 1 );
						n = temp;
					}
				}
			}
			var res:String = "";
			for each(var i:int in resArr)
			{
				res += i;
			}
			super.showAnswerStr( res );
		}
		
	}
}