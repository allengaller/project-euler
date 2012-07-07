package probs
{
	import utils.Utils;

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