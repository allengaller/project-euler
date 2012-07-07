package probs
{
	public class Prob16 extends Problem
	{
		public function Prob16()
		{
			var st:bigInt = new bigInt("2");
			for(var i:int = 1;i<1000;i++)
			{
				st = st.add(st);
			}
			var sum:int = 0;
			for(i = 0;i<st.stri.length;i++)
			{
				sum += int(st.stri.charAt(i));
			}
			super.showAnswer(sum);
		}
	}
}

class bigInt extends Object
{
	private var str:String = "0";
	
	public function bigInt(strInt:String)
	{
		this.str = strInt;
	}
	
	public function toString():String
	{
		return this.stri;
	}
	
	public function get stri():String
	{
		return str;
	}
	
	public function add( a:bigInt ):bigInt
	{
		
		var i:int = a.stri.length-1;
		var j:int = this.stri.length-1;
		
		var intA:int = 0;
		var intB:int = 0;
		var lastAdd:int = 0;
		var currAdd:int = 0
		var bitArr:Array = [];
		
		while(i>=0 && j>=0)
		{
			intA = int(a.stri.charAt(i));
			intB = int(this.stri.charAt(j));
			currAdd = intA+intB+lastAdd/10;
			lastAdd = currAdd;
			bitArr.push(currAdd%10);
			i--;
			j--;
		}
		if(i>=0)
		{
			while(i>=0)
			{
				intA = int(a.stri.charAt(i));
				currAdd = intA + lastAdd/10;
				lastAdd = currAdd;
				if(i == 0)
				{
					bitArr.push(currAdd);	
				}
				else
				{
					bitArr.push(currAdd%10);					
				}
				i--;
			}
		}
		else if(j>=0)
		{
			while(j>=0)
			{
				intB = int(this.stri.charAt(j));
				currAdd = intB + lastAdd/10;
				lastAdd = currAdd;
				if(j == 0)
				{
					bitArr.push(currAdd);	
				}
				else
				{
					bitArr.push(currAdd%10);					
				}
				j--;
			}
		}
		else
		{
			if(lastAdd>=10)
			{
				bitArr.push(Math.floor(lastAdd/10));				
			}
		}
		
		bitArr.reverse();
		var add:String = "";
		for(i = 0;i<bitArr.length;i++)
		{
			add += bitArr[i];
		}
		return new bigInt(add);
	}
}