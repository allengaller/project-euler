package probs
{
	import org.osmf.net.StreamingURLResource;
	
	import utils.Utils;

	public class Prob54 extends Problem
	{
		private var turns:Array = [];
		
		public function Prob54()
		{
			super();
			Utils.getDataFromExternal( "external/poker.txt", solve );
		}
		
		private function solve( data:String ):void
		{
			turns = data.split("\r\n");
			var ap:Array = [];
			var p1:Array = [];
			var p2:Array = [];
			for each(var turn:String in turns)
			{
				ap = turn.split(" ");
				p1 = ap.slice(0,5);
				p2 = ap.slice(5,10);
			}
		}
		
		private function comp( p1:Array, p2:Array ):Boolean
		{
			
			return false;
		}
		
		private function score( cards:Array ):int
		{
			//1st
			
			return 0;
			
		}
	}
}