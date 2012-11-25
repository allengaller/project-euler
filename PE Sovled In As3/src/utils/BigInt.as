package utils
{
	public class BigInt
	{
		private var _strNum:String;
		
		public static const MAX_DIGITS:int = int.MAX_VALUE;
		
		public function BigInt( strNum:* )
		{
			_strNum = String(strNum);
		}
		
		public function toString():String
		{
			return _strNum;
		}
		/**
		 *Get the digits length of the BigInt 
		 * @return the digits length(int) of the BigInt 
		 * 
		 */		
		public function get digits():int
		{
			return _strNum.length;
		}
		/**
		 * Get the pow BigInt of [baseNum]^[powNum] in [limit] digits
		 * @param baseNum
		 * @param powNum
		 * @param limit
		 * @return 
		 * 
		 */		
		public static function pow( baseNum:int, powNum:int, limit:int = MAX_DIGITS ):BigInt
		{
			if( baseNum == 1 || baseNum == 0 )
			{
				return new BigInt(baseNum);
			}
			var base:BigInt;
			
			var totalLoop:int = powNum;
			var loopCt:int = 0;
			var totalPow:BigInt = new BigInt("1");
			
			while( loopCt != powNum )
			{
				base = new BigInt(baseNum);
				for( var i:int = 1;Math.pow(2,i) <= totalLoop;i++)
				{
					base = base.prod(base,limit);
				}
				//trace( "Loop: "+baseNum+"^"+Math.pow(2,i-1)+" = "+base.toString() );
				loopCt += Math.pow(2,i-1);
				totalLoop = totalLoop - Math.pow(2,i-1);
				totalPow = totalPow.prod( base,limit );
				//trace( "Sum: "+baseNum+"^"+loopCt+" = "+totalPow.toString() );
			}
			//trace(totalPow.toString() );
			return totalPow;
		}
		/**
		 *Get the Product BigInt of this BigInt and other Big Number in limit digits
		 * @param prodNum:* can be a Number or a String or a BigInt 
		 * @param limit
		 * @return 
		 * 
		 */		
		public function prod( prodNum:*, limit:int = MAX_DIGITS ):BigInt
		{
			var thisNumStr:String = this._strNum;
			var prodNumStr:String = String(prodNum);
			
			var tmpProd:String;
			var lastProd:String = "0";
			
			var prodDigit:int;
			var addDigit:int = 0;
			var digitProd:int;
			
			var prod:String = "";
			
			var k:int = 0;
			
			for(var i:int = prodNumStr.length - 1 ; i >= 0; i--)
			{
				if( k > limit )
				{
					return new BigInt( Utils.strReverse(prod) );
					break;
				}
					
				prodDigit = int(prodNumStr.charAt(i));
				tmpProd = "";
				addDigit = 0;
				
				for(var j:int = thisNumStr.length - 1; j >= 0; j--)
				{
					digitProd = (int(thisNumStr.charAt(j))*prodDigit + addDigit);
					tmpProd += digitProd % 10;
					addDigit = digitProd / 10;
				}
				tmpProd += addDigit == 0 ? "" : addDigit;
				tmpProd = strAdd( Utils.strReverse( tmpProd ), lastProd );
				prod += tmpProd.charAt( tmpProd.length - 1 );
				lastProd = tmpProd.substring(0,tmpProd.length-1);
				
				k ++;
			}
			return new BigInt( lastProd + Utils.strReverse(prod) );
		}
		/**
		 * Get the Sum BigInt of this BigInt and an addNum in limit digits
		 * @param addNum:* can be a Number or a String or a BigInt
		 * @param limit
		 * @return 
		 * 
		 */		
		public function add( addNum:*, limit:int = MAX_DIGITS ):BigInt
		{
			var thisNumStr:String = this.digits > limit ? this._strNum.substr( this.digits - limit ) : this._strNum;
			var addNumStr:String;
			
			if( addNum is BigInt )
			{
				addNumStr = addNum.digits > limit ? addNum._strNum.substr( addNum.digits - limit ) : addNum._strNum;				
			}
			else
			{
				addNumStr = String(addNum).length > limit ? String(addNum).substr( String(addNum).length - limit ) : String(addNum); 
			}
			
			return new BigInt( strAdd( thisNumStr, addNumStr ) );
		}
		/**
		 * Get the sum of two number string.
		 * @param strA
		 * @param strB
		 * @return 
		 * 
		 */		
		public static function strAdd( strA:String, strB:String ):String
		{
			var topDigits:String;
			var addDigits:String;
			var addedDigits:String;
			var tmpStr:String;
			
			if( strA.length < strB.length )
			{
				tmpStr = strA;
				strA = strB;
				strB = tmpStr;
			}
			if( strA.length > strB.length )
			{
				
				topDigits = strA.substr( 0, strA.length - strB.length );
				addDigits = strA.substring( strA.length - strB.length );
				addedDigits = sameDigitStrAdd( addDigits, strB );
				if( addedDigits.length > addDigits.length )
				{
					return addByOne(topDigits) + addedDigits.substr(1);
				}
				else
				{
					return topDigits + addedDigits;
				}
			}
			else
			{
				return sameDigitStrAdd(strA, strB);
			}
		}
		
		private static function addByOne( numStr:String ):String
		{
			var i:int = numStr.length - 1;
			var addDigit:int = 1;
			var tmp:int;
			var sum:String = "";
			while( i >= 0 )
			{
				tmp = int(numStr.charAt(i)) + addDigit;
				if( tmp > 9 )
				{
					addDigit = 1;
					sum += "0";
				}
				else
				{
					sum += tmp;
					return numStr.substring( 0, i ) + Utils.strReverse(sum);
				}
				i --;
			}
			return Utils.strReverse(sum+"1");
		}
		
		private static function sameDigitStrAdd( strA:String , strB:String ):String
		{
			if( strA.length == strB.length )
			{
				var sum:String = "";
				var addBit:int = 0;
				
				var i:int = strA.length-1;
				var digitSum:int = 0;
				while( i >= 0 )
				{
					digitSum = int(strA.charAt(i)) + int(strB.charAt(i)) + addBit;
					if( digitSum > 9 )
					{
						addBit = 1;
						sum += digitSum-10;
					}
					else
					{
						addBit = 0;
						sum += digitSum;
					}
					i--;
				}
				if( digitSum > 9 )
				{
					sum += 1;
				}
				return Utils.strReverse( sum );
			}
			return "0";
		}
	}
}