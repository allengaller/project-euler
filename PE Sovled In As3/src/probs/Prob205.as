package probs
{
	
	/**
	 * <B>Problem 205</B>
	 <div class="problem_content" role="problem">
	 <p>Peter has nine four-sided (pyramidal) dice, each with faces numbered 1, 2, 3, 4.<br>
	 Colin has six six-sided (cubic) dice, each with faces numbered 1, 2, 3, 4, 5, 6.</p>
	 <p>Peter and Colin roll their dice and compare totals: the highest total wins. The result is a draw if the totals are equal.</p>
	 <p>What is the probability that Pyramidal Pete beats Cubic Colin? Give your answer rounded to seven decimal places in the form 0.abcdefg</p>
	 </div>
	 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
	 * 
	 */
	public class Prob205 extends Problem
	{
		private var _peter:Array = [];
		private var _colin:Array = [];
		
		public function Prob205()
		{
			var i0:int = 1;
			var i1:int = 1;
			var i2:int = 1;
			var i3:int = 1;
			var i4:int = 1;
			var i5:int = 1;
			var i6:int = 1;
			var i7:int = 1;
			var i8:int = 1;
			var ap:int = 0;
			var ac:int = 0;
			var fenzi:Number = 0;
			var prob:Number = 0;
			//cal peter
			for( i0 = 1;i0<5;i0++)
			{
				for( i1 = 1;i1<5;i1++)
				{
					for( i2 = 1;i2<5;i2++)
					{
						for( i3 = 1;i3<5;i3++)
						{
							for( i4 = 1;i4<5;i4++)
							{
								for( i5 = 1;i5<5;i5++)
								{
									for( i6 = 1;i6<5;i6++)
									{
										for( i7 = 1;i7<5;i7++)
										{
											for( i8 = 1;i8<5;i8++)
											{
												if( !_peter[i0+i1+i2+i3+i4+i5+i6+i7+i8] )
												{
													_peter[i0+i1+i2+i3+i4+i5+i6+i7+i8] = 1;
												}
												else
												{
													_peter[i0+i1+i2+i3+i4+i5+i6+i7+i8] += 1;
												}
												ap++;
											}
										}
									}
								}
							}
						}
					}
				}
			}
			//cal colin
			for( i0 = 1;i0<7;i0++)
			{
				for( i1 = 1;i1<7;i1++)
				{
					for( i2 = 1;i2<7;i2++)
					{
						for( i3 = 1;i3<7;i3++)
						{
							for( i4 = 1;i4<7;i4++)
							{
								for( i5 = 1;i5<7;i5++)
								{
									if( !_colin[i0+i1+i2+i3+i4+i5] )
									{
										_colin[i0+i1+i2+i3+i4+i5] = 1;
									}
									else
									{
										_colin[i0+i1+i2+i3+i4+i5] += 1;
									}
									ac++;
								}
							}
						}
					}
				}
			}
			trace(1);
			for( var p:String in _peter )
			{
				for( var c:String in _colin )
				{
					if( int(p) > int(c) )
					{
						fenzi += (_peter[p]*_colin[c]);
					}
				}
			}
			super.showAnswerStr( "Prob is "+(fenzi/(ap*ac)).toFixed(7) );
			
		}
	}
}