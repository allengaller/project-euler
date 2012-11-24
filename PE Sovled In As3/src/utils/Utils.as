package utils
{
	import flash.events.Event;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	
	/**
	 *  Utils is a functional class.<br>
	 * It provide static functions that will help for math problem solve.
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */	
	public class Utils
	{
		public static const leapYear:Array = [31,29,31,30,31,30,31,31,30,31,30,31];
		public static const nonLeapYear:Array = [31,28,31,30,31,30,31,31,30,31,30,31];
		private static var Primers:Array = [];
		
		public function Utils()
		{
		}
		
		/**
		 * Get a prime number<B>(String Type)</B> list below <B>one million</B>.
		 * @param callBack:Function
		 * when Primes between 1-1,000,000 loaded complete, callBack will be called and put in an array with primes into it.
		 */
		public static function getPrimesUnderMillion( callBack:Function ):void
		{
			if( !Primers.length )
			{
				getDataFromExternal( "external/primes_1,000,000.txt", function( data:String ):void
				{
					if( data )
					{
						Primers = data.split( " " );
						if( int(Primers[Primers.length-1]) == 0 )
						{
							Primers.pop();							
						}
						callBack.apply( null, [Primers] );
					}
				});
			}
			else
			{
				callBack.apply( null, [Primers] );				
			}
		}
		
		/**
		 * Get a prime number<B>(String Type)</B> list below <B>one million</B>.
		 * @param callBack:Function
		 * when Primes between 1-10,000,000 loaded complete, callBack will be called and put in an array with primes into it.
		 */
		public static function getPrimesUnderTenMillion( callBack:Function ):void
		{
			if( !Primers.length )
			{
				getDataFromExternal( "external/primes_10,000,000.txt", function( data:String ):void
				{
					if( data )
					{
						Primers = data.split( " " );
						if( int(Primers[Primers.length-1]) == 0 )
						{
							Primers.pop();							
						}
						callBack.apply( null, [Primers] );
					}
				});
			}
			else
			{
				callBack.apply( null, [Primers] );				
			}
		}
		
		/**
		 * Return a deep copy of a non base type varible.
		 * @param obj (in any type)
		 * @return A <B>deep</B> copy of obj.
		 * 
		 */		
		public static function getADeepCopy(obj:*):*
		{
			var parent:ByteArray = new ByteArray();
			parent.writeObject(obj);
			parent.position = 0;
			return parent.readObject();
		}
		
		/**
		 * A function to get data(String) from an external text file.
		 * @param fileName:String The filepath of the file want to be load.
		 * @param callBack:Function When the file loaded complete, will call this callBack function with a string readed from the file.
		 * 
		 */		
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
		
		/**
		 * Check if a number is a prime number
		 * @param num:Number The number which need to be check if it's a prime number.
		 * @return Return <code>true</code> if num is a prime number, <code>false</code> if not.
		 * 
		 */		
		public static function isPrimer(num:Number):Boolean
		{
			if(num < 2)
			{
				return false;
			}
			var factor:Number = 2;
			var sqrt:Number = Math.sqrt(num);
			while(factor<= sqrt)
			{
				if(num%factor == 0)
				{
					return false;
				}
				factor ++;
			}
			return true;
		}
		
		/**
		 * Return the greatest common divisor of interger a and interger b.
		 * @param a The first interger.
		 * @param b The Second interger.
		 * @return Return the greatest common divisor of a and b.
		 * 
		 */		
		public static function gcd(a:Number, b:Number):Number
		{
			return b == 0 ? a : gcd(b,a%b);
		}
		
		/**
		 * Check a Number or a string or a array is a palindrome.
		 * @param num (in any type)
		 * @return Return <code>true</code> if num is a palindrome, <code>false</code> if not.
		 * 
		 */		
		public static function isParlindrome(num:*):Boolean
		{
			var bits:*;
			if( num is Number )
			{
				if(num < 0)
				{
					return false;
				}
				else if( num >=0 && num <= 9 )
				{
					return true;
				}
				bits = getBitArray( num );				
			}
			else if( num is String || num is Array )
			{
				bits = num;
			}
			else
			{
				return false;
			}
			for(var i:int = 0;i<bits.length;i++)
			{
				if(i > bits.length - 1 - i)
				{
					break;
				}
				if( bits is String && (bits as String).charCodeAt(i) != (bits as String).charCodeAt( bits.length-1-i ) )
				{
					return false;
				}
				if( bits is Array && bits[i] != bits[bits.length-1-i])
				{
					return false;
				}
			}
			return true;
		}
		
		/**
		 * Get a array of every bit of a number;
		 * @param num:Number
		 * @return Return an <code>Array</code> which contains every bit of num.<br>
		 * For example, if num equals to 1234 and will return [4,3,2,1].
		 * 
		 * @see getBitsNum
		 */		
		public static function getBitArray( num:Number ):Array
		{
			var bits:Array = [];
			while(num > 0)
			{
				bits.push(num%10);
				num = Math.floor(num/10);
			}
			return bits;
		}
		
		/**
		 * Get a number which concatenate every number in an array.
		 * @param bits:Array 
		 * @return  Return a number which concatenate every number in bits.<br>
		 * For example, if bits equals to [4,3,2,1] and will return 1234.
		 * 
		 * @see getBitArray
		 */		
		public static function getBitsNum( bits:Array ):Number
		{
			if( !bits.length )
			{
				return 0;
			}
			var res:Number = 0;
			var j:int = 0;
			for( var i:int = 0; i<bits.length; i++ )
			{
				res += bits[i] * Math.pow( 10, j++ );
			}
			return res;
		}
		
		/**
		 * Return the number of factors of num, factors include 1 and num self.
		 * @param num:Number
		 * @return Return the number of factors of num, <B>factors include 1 and num self</B>.
		 * 
		 */		
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
		
		/**
		 * Check a year is a leap year. 
		 * @param year:int
		 * @return Return <code>true</code> if year is a leap year, false if not.
		 * 
		 */		
		public static function isLeapYear(year:int):Boolean
		{
			return year%4 == 0 ? (year%100 == 0 ? year%400 == 0 : true) : false;
		}
		
		/**
		 * Return an array of all the divisors(include 1) of an integer.
		 * @param num:int
		 * @return Return an array of all the divisors(include 1) of num.
		 * 
		 */		
		public static function getDivisors(num:Number):Array
		{
			var divs:Array = [1];
			var i:Number = 2;
			while(i <= Math.floor(Math.sqrt(num)) )
			{
				if(num % i == 0)
				{
					divs.push(i);
					if(i != num/i)
					{
						divs.push(num/i);
					}
				}
				i++;
			}
			return divs;
		}
		
		/**
		 * Return the factorial of an integer.
		 * @param num:int
		 * @return Return the factorial of num.
		 * 
		 */		
		public static function fact(num:int):Number
		{
			if(num < 2)
			{
				return 1;
			}
			var fac:Number = 1;
			while(num > 1)
			{
				fac *= num--;
			}
			return fac;
		}
		
		/**
		 * Return an integer array which split a string with a string spiliter.
		 * @param data:String
		 * @param spiliter:String
		 * @return Return an integer array which split data with spiliter.<br>
		 * For example, data is "3 2 4", spiliter is " ", then will return [3,2,4].
		 * 
		 */		
		
		public static function getIntArrayFromString( data:String, spiliter:String = " " ):Array
		{
			var numArr:Array = [];
			var lines:Array = data.split("\r\n");
			var row:int = 0;
			for each(var line:String in lines)
			{
				numArr[row] = line.split(spiliter);
				for(var i:int = 0;i<numArr[row].length;i++)
				{
					numArr[row][i] = int(numArr[row][i]);
				}
				row++;
			}
			return numArr;
		}
		
		/**
		 * Return an array(<code>int</code>) filled with all prime factors of an integer.
		 * @param num:int
		 * @return Return an array filled with prime factors of num.<br>
		 * If num is a prime number, the array will be [].
		 * 
		 */		
		public static function getPrimeFactors( num:int ):Array
		{
			var factors:Array = [];
			if( num < 3 )
			{
				return factors;
			}
			var sqrt:int = int(Math.sqrt(num));
			var i:int = 2;
			var d:int = 0;
			while( i <= sqrt )
			{
				if( num%i == 0 )
				{
					d = num/i;
					if( isPrimer(i) )
					{
						factors.push( i );
					}
					if( isPrimer(d) && i!=d )
					{
						factors.push( d );
					}
				}
				i++;
			}
			return factors; 
		}
	}
}