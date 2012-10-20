package probs
{
	import utils.Utils;

	public class Prob89 extends Problem
	{
		public function Prob89()
		{
			super();
			var sum:int = 0;
			var sum1:int = 0;
			Utils.getDataFromExternal("external/roman.txt", function(data:String):void
			{
				var list:Array = data.split("\r\n");
				for each(var roma:String in list)
				{
					if( roma.length == minRoman(roma).length )
					{
						sum += 1;
					}
					else
					{
						trace( roma+" -> "+minRoman(roma) );
						sum1 += 1
					}
				}
				showAnswerStr("changed:"+sum1 +" no change:"+sum);
			});
		}
		
		private function minRoman( roma:String ):String
		{
			roma = roma.replace( /IIIIIIIIII/g,"X");
			roma = roma.replace( /IIIII/g,"V");
			roma = roma.replace( /VIIII/g,"IX");
			roma = roma.replace( /IIII/g,"IV");
			
			roma = roma.replace( /VV/g,"X");
			
			roma = roma.replace( /XXXXXXXXXX/g,"C");
			roma = roma.replace( /XXXXX/g,"L");
			roma = roma.replace( /LXXXX/g,"XC");
			roma = roma.replace( /XXXX/g,"XL");
			
			roma = roma.replace( /LL/g,"C");
			
			roma = roma.replace( /CCCCCCCCCC/g,"M");
			roma = roma.replace( /CCCCC/g,"D");
			roma = roma.replace( /DCCCC/g,"CM");
			roma = roma.replace( /CCCC/g,"CD");
			
			roma = roma.replace( /DD/g,"M");
			return roma;
		}
	}
}