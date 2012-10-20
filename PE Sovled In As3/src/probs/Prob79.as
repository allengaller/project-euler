package probs
{
	import utils.Utils;

	/**
	 * <B>Problem 79</B>
	 <div class="problem_content" role="problem">
	 <p>A common security method used for online banking is to ask the user for three random characters from a passcode. For example, if the passcode was 531278, they may ask for the 2nd, 3rd, and 5th characters; the expected reply would be: 317.</p>
	 <p>The text file, <a href="project/keylog.txt">keylog.txt</a>, contains fifty successful login attempts.</p>
	 <p>Given that the three characters are always asked for in order, analyse the file so as to determine the shortest possible secret passcode of unknown length.</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob79 extends Problem
	{
		private var m_relations:Object = {};
		public function Prob79()
		{
			Utils.getDataFromExternal("external/prob79", setExternData);
		}
		
		protected override function setExternData(data:String):void
		{
			super.setExternData(data);
			var nums:Array = data.split("\r\n");
			var numbric:Array = [];
			for each(var num:String in nums)
			{
				if(num.length == 3)
				{
					m_relations[ num.charAt(0)+"_"+num.charAt(1) ] = -1;
					m_relations[ num.charAt(1)+"_"+num.charAt(0) ] = 1;
					m_relations[ num.charAt(0)+"_"+num.charAt(2) ] = -1;
					m_relations[ num.charAt(2)+"_"+num.charAt(0) ] = 1;
					m_relations[ num.charAt(1)+"_"+num.charAt(2) ] = -1;
					m_relations[ num.charAt(2)+"_"+num.charAt(1) ] = 1;
					for (var i:int = 0;i<3;i++)
					{
						if( numbric.indexOf( int(num.charAt(i)) )<0 )
						{
							numbric.push( int(num.charAt(i)) );
						}
					}
				}
			}
			numbric.sort(comp);
			var res:String = "";
			for each(var number:int in numbric)
			{
				res += number.toString();
			}
			super.showAnswerStr( res );
		}
		
		private function comp(a:int, b:int):int
		{
			if( m_relations.hasOwnProperty(a+"_"+b) )
			{
				return m_relations[a+"_"+b];
			}
			return 0;
		}
	}
}