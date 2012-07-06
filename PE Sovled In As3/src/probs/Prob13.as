package probs
{
	import utils.Utils;

	public class Prob13 extends Problem
	{
		public function Prob13()
		{
			Utils.getDataFromExternal("external/prob13",setExternData);
		}
		
		protected override function setExternData(data:String):void
		{
			super.externData = data;
			var numArr:Array = data.split("\r\n");
			var bitArr:Array = [];
			if(numArr.length)
			{
				var bitNum:int = 0;
				var turnAdd:int = 0;
				var lastAdd:int = 0;
				for(var i:int = numArr[0].length-1;i>=0;i--)
				{
					turnAdd = 0;
					for each(var bigNumStr:String in numArr)
					{
						bitNum = int(bigNumStr.charAt(i));
						turnAdd += bitNum;
					}
					if(i == 0)
					{
						var first:int = turnAdd + Math.floor(lastAdd/10);
						while(first)
						{
							bitArr.push(first%10);
							first = Math.floor(first/10);
						}
					}
					else
					{
						bitArr.push( (turnAdd + Math.floor(lastAdd/10) )%10 );
					}
					lastAdd = turnAdd + Math.floor(lastAdd/10);
				}
				bitArr.reverse();
				var bitStr:String = "";
				for (i = 0;i<10;i++)
				{
					bitStr += bitArr[i];
				}
				super.showAnswerStr(bitStr);
			}
		}
	}
}