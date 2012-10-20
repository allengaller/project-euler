package probs
{
	import utils.Utils;
	
	/**
	 * <B>Problem 67</B>
	 <div class="problem_content" role="problem">
	 <p>By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.</p>
	 <p style="text-align:center;font-family:courier new;font-size:12pt;"><span style="color:#ff0000;"><b>3</b></span><br>
	 <span style="color:#ff0000;"><b>7</b></span> 4<br>
	 2 <span style="color:#ff0000;"><b>4</b></span> 6<br>
	 8 5 <span style="color:#ff0000;"><b>9</b></span> 3</p>
	 <p>That is, 3 + 7 + 4 + 9 = 23.</p>
	 <p>Find the maximum total from top to bottom in <a href="project/triangle.txt">triangle.txt</a> (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.</p>
	 <p class="info"><b>NOTE:</b> This is a much more difficult version of <a href="index.php?section=problems&amp;id=18">Problem 18</a>. It is not possible to try every route to solve this problem, as there are 2<sup>99</sup> altogether! If you could check one trillion (10<sup>12</sup>) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob67 extends Problem
	{
		public function Prob67()
		{
			super();
			Utils.getDataFromExternal("external/prob67",setExternData);
		}
		
		protected override function setExternData(data:String):void
		{
			super.setExternData(data);
			var linArr:Array = [];
			var lines:Array = data.split("\r\n");
			var linNum:int = 0;
			for each(var line:String in lines)
			{
				linArr[linNum++] = line.split(" ");
			}
			var matrix:Array = [];
			for(var i:int = 0;i<linArr.length;i++)
			{
				matrix[i] = [];
				for(var j:int = 0;j<linArr[i].length;j++)
				{
					matrix[i][j] = { value: int(linArr[i][j]),sum:0 };
				}
			}
			matrix[0][0] = { value: int(linArr[0][0]),sum:int(linArr[0][0]) };
			var sum:Number = 0;
			for(i = 0;i<matrix.length-1;i++)
			{
				for(j = 0;j<matrix[i].length;j++)
				{
					//i+1,j
					sum = matrix[i][j].sum + matrix[i+1][j].value;
					if(sum > matrix[i+1][j].sum)
					{
						matrix[i+1][j].sum = sum;
					}
					//i+1,j+1
					sum = matrix[i][j].sum + matrix[i+1][j+1].value;
					if(sum > matrix[i+1][j+1].sum)
					{
						matrix[i+1][j+1].sum = sum;
					}
				}
			}
			sum = 0;
			for(i = 0;i<matrix[matrix.length-1].length;i++)
			{
				if( matrix[matrix.length-1][i].sum > sum )
				{
					sum = matrix[matrix.length-1][i].sum;
				}
			}
			
			super.showAnswer(sum);
		}
	}
}