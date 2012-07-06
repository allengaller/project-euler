package utils
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class Utils
	{
		public function Utils()
		{
		}
		//get data(string) from external file
		public static function getDataFromExternal(fileName:String, callBack:Function):void
		{
			var data:String;
			var req:URLRequest = new URLRequest();
			req.url = fileName;
			
			var loader:URLLoader = new URLLoader();
			loader.load(req);
			loader.addEventListener(Event.COMPLETE, 
				function(evt:Event):void
				{
					data = evt.target.data;
					callBack(data);
				}
			);
		}
		//return true if num is a primer ,false if not
		public static function isPrimer(num:Number):Boolean
		{
			if(num < 2)
			{
				return false;
			}
			var factor:Number = 2;
			while(factor<=Math.sqrt(num))
			{
				if(num%factor == 0)
				{
					return false;
				}
				factor ++;
			}
			return true;
		}
		//return the max 公倍数
		public static function gcd(a:int, b:int):int
		{
			return b == 0 ? a : gcd(b,a%b);
		}
		//若num为回文返回真，否则返回假
		public static function isParlindrome(num:int):Boolean
		{
			if(num < 10)
			{
				return false;
			}
			var bits:Array = [];
			while(num > 0)
			{
				bits.push(num%10);
				num /= 10;
			}
			for(var i:int = 0;i<bits.length;i++)
			{
				if(i > bits.length - 1 - i)
				{
					break;
				}
				if(bits[i] != bits[bits.length-1-i])
				{
					return false;
				}
			}
			return true;
		}
		//return the factor num of num,include 1 and num self
		public static function getFactorNum(num:Number):int
		{
			if(num < 1)
			{
				return 0;
			}
			if(num == 1)
			{
				return 1;
			}
			var count:int = 0;
			var factor:Number = 2;
			var sqrt:Number = Math.sqrt(num);
			while(factor <= sqrt)
			{
				if(num % factor == 0)
				{
					factor == sqrt ? count += 1 : count +=2;
				}
				factor ++;
			}
			return count+2;
		}
	}
}