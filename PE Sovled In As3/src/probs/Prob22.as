package probs
{
	import utils.Utils;

	public class Prob22 extends Problem
	{
		public function Prob22()
		{
			Utils.getDataFromExternal("external/prob22", setExternData);
		}
		
		protected override function setExternData(data:String):void
		{
			super.setExternData(data);
			var abc:String = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			var names:Array = data.split(",");
			var total:Number = 0;
			
			names.sort();
			for(var i:int = 0;i<names.length;i++)
			{
				var sum:int = 0;
				for(var j:int = 0;j<names[i].length;j++)
				{
					var index:int = abc.indexOf( (names[i] as String).charAt(j) );
					if( index >= 0 )
					{
						sum += index+1;
					}
				}
				total += sum*(i+1);
			}
			super.showAnswer(total);
		}
	}
}