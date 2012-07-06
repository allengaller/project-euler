package probs
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.utils.getTimer;
	
	public class Problem extends Sprite
	{
		protected var answer:TextField = new TextField();
		protected var startTime:Number = 0;
		protected var endTime:Number = 0;
		protected var externData:String = "";
		
		public function Problem()
		{
			super();
			answer.width = 300;
			startTime = getTimer();
		}
		
		protected function showAnswer(answer:Number):void
		{
			endTime = getTimer();
			var secs:Number = ((endTime-startTime)/1000);
			this.answer.text = String(answer + "  used:"+secs+" second" + (secs > 1 ? "s" : ""));
			addChild(this.answer);
		}
		
		protected function showAnswerStr(answer:String):void
		{
			endTime = getTimer();
			var secs:Number = ((endTime-startTime)/1000);
			this.answer.text = String(answer + "  used:"+secs+" second" + (secs > 1 ? "s" : ""));
			addChild(this.answer);
		}
		
		protected function setExternData(data:String):void
		{
			this.externData = data;
		}
	}
}