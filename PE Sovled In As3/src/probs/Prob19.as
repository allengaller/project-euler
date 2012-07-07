package probs
{
	import utils.Utils;

	public class Prob19 extends Problem
	{
		public function Prob19()
		{
			var months:Array = [];
			var days:int = 0;
			var sum:int = 0;
			for(var year:int = 1900; year < 2001;year++)
			{
				Utils.isLeapYear( year ) ? months = Utils.leapYear : months = Utils.nonLeapYear ;
				for(var i:int = 0;i<months.length;i++)
				{
					if(year >= 1901)
					{
						if( (days+1)%7 == 0 )
						{
							sum++;
						}
					}
					days += months[i];
				}
			}
			
			super.showAnswer(sum);
		}
		
	}
}