package probs
{
	import utils.Utils;
	
	public class Prob11 extends Problem
	{
		private var numArr:Array = [];
		public function Prob11()
		{
			Utils.getDataFromExternal("external/prob11", setExternData);
		}
		
		protected override function setExternData(data:String):void
		{
			super.setExternData(data);
			var lines:Array = data.split("\r\n");
			var row:int = 0;
			for each(var line:String in lines)
			{
				numArr[row] = line.split(" ");
				for(var i:int = 0;i<numArr[row].length;i++)
				{
					numArr[row][i] = int(numArr[row][i]);
				}
				row++;
			}
			var max:int = 0;
			var temp:int = 0;
			var arr:Array = [];
			for(i = 0;i<numArr.length;i++)
			{
				for(var j:int = 0;j<numArr[i].length;j++)
				{
					if(i+3 < numArr.length)
					{
						temp = numArr[i][j] * numArr[i+1][j] * numArr[i+2][j] * numArr[i+3][j];
						if(temp > max)
						{
							arr = [numArr[i][j] , numArr[i+1][j] , numArr[i+2][j] , numArr[i+3][j]];
							max = temp;
						}
					}
					if(j+3 < numArr[i].length)
					{
						temp = numArr[i][j] * numArr[i][j+1] * numArr[i][j+2] * numArr[i][j+3];
						if(temp > max)
						{
							arr = [numArr[i][j] , numArr[i][j+1] , numArr[i][j+2] , numArr[i][j+3]];
							max = temp;
						}
					}
					if(i+3 < numArr.length && j+3 < numArr[i].length)
					{
						temp = numArr[i][j] * numArr[i+1][j+1] * numArr[i+2][j+2] * numArr[i+3][j+3];
						if(temp > max)
						{
							arr = [numArr[i][j] , numArr[i+1][j+1] , numArr[i+2][j+2] , numArr[i+3][j+3]];
							max = temp;
						}
					}
					if(i+3 < numArr.length && j-3 >= 0)
					{
						temp = numArr[i][j] * numArr[i+1][j-1] * numArr[i+2][j-2] * numArr[i+3][j-3];
						if(temp > max)
						{
							arr = [numArr[i][j] , numArr[i+1][j-1] , numArr[i+2][j-2] , numArr[i+3][j-3]];
							max = temp;
						}
					}
				}
			}
			super.showAnswer(max);
		}
		
	}
}