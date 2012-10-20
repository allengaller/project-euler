package probs
{
	import utils.Utils;

	public class Prob65 extends Problem
	{
		/**
		 * <B>Problem 65</B>
		 * <div class="problem_content" role="problem">
			<p>The square root of 2 can be written as an infinite continued fraction.</p>
			<div style="margin-left:20px;">
			<table border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
			<td><img src="images/symbol_radic.gif" width="14" height="16" alt="√" border="0" style="vertical-align:middle;">2 = 1 +</td>
			<td colspan="4"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="135" height="1" alt=""><br></div></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td colspan="3"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="110" height="1" alt=""><br></div></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td colspan="2"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="85" height="1" alt=""><br></div></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="60" height="1" alt=""><br></div></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2 + ...</td>
			</tr>
			</tbody></table>
			</div>
			<p>The infinite continued fraction can be written, <img src="images/symbol_radic.gif" width="14" height="16" alt="√" border="0" style="vertical-align:middle;">2 = [1;(2)], (2) indicates that 2 repeats <i>ad infinitum</i>. In a similar way, <img src="images/symbol_radic.gif" width="14" height="16" alt="√" border="0" style="vertical-align:middle;">23 = [4;(1,3,1,8)].</p>
			<p>It turns out that the sequence of partial values of continued fractions for square roots provide the best rational approximations. Let us consider the convergents for <img src="images/symbol_radic.gif" width="14" height="16" alt="√" border="0" style="vertical-align:middle;">2.</p>
			<div style="margin-left:20px;">
			
			<table border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
			<td>1 +</td>
			<td><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="15" height="1" alt=""><br></div></td>
			<td>= 3/2</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td><div style="text-align:center;">2</div></td>
			<td>&nbsp;</td>
			</tr>
			</tbody></table>
			
			<table border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
			<td>1 +</td>
			<td colspan="2"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="50" height="1" alt=""><br></div></td>
			<td>= 7/5</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="15" height="1" alt=""><br></div></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><div style="text-align:center;">2</div></td>
			<td>&nbsp;</td>
			</tr>
			</tbody></table>
			
			<table border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
			<td>1 +</td>
			<td colspan="3"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="80" height="1" alt=""><br></div></td>
			<td>= 17/12</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td colspan="2"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="50" height="1" alt=""><br></div></td>
			<td>&nbsp;</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="15" height="1" alt=""><br></div></td>
			<td>&nbsp;</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><div style="text-align:center;">2</div></td>
			<td>&nbsp;</td>
			</tr>
			</tbody></table>
			
			<table border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
			<td>1 +</td>
			<td colspan="4"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="110" height="1" alt=""><br></div></td>
			<td>= 41/29</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td colspan="3"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="80" height="1" alt=""><br></div></td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td colspan="2"><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="50" height="1" alt=""><br></div></td>
			<td>&nbsp;</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>2 +</td>
			<td><div style="text-align:center;">1<br><img src="images/blackdot.gif" width="15" height="1" alt=""><br></div></td>
			<td>&nbsp;</td>
			</tr>
			<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td><div style="text-align:center;">2</div></td>
			<td>&nbsp;</td>
			</tr>
			</tbody></table>
			</div>
			<p>Hence the sequence of the first ten convergents for <img src="images/symbol_radic.gif" width="14" height="16" alt="√" border="0" style="vertical-align:middle;">2 are:</p>
			<div class="info">1, 3/2, 7/5, 17/12, 41/29, 99/70, 239/169, 577/408, 1393/985, 3363/2378, ...</div>
			<p>What is most surprising is that the important mathematical constant,<br><i>e</i> = [2; 1,2,1, 1,4,1, 1,6,1 , ... , 1,2<i>k</i>,1, ...].</p>
			<p>The first ten terms in the sequence of convergents for <i>e</i> are:</p>
			<div class="info">2, 3, 8/3, 11/4, 19/7, 87/32, 106/39, 193/71, 1264/465, 1457/536, ...</div>
			<p>The sum of digits in the numerator of the 10<sup>th</sup> convergent is 1+4+5+7=17.</p>
			<p>Find the sum of digits in the numerator of the 100<sup>th</sup> convergent of the continued fraction for <i>e</i>.</p>
			</div>
		 * @author Tim Wu <a href="http://wuzhiwei.net">http://wuzhiwei.net</a><br>
		 * 
		 */
		public function Prob65()
		{
			super();
			var nums:Array = [2];
			var j:int = 0;
			var lastNume:Number = 0;
			var lastdeno:Number = 1;
			var gcd:Number = 1;
			var temp:Number = 0;
			
			for(var i:int = 1;i<100;i++)
			{
				nums.push( i == 2+3*j ? ++j*2 : 1 );
			}
			lastNume = 1;
			lastdeno = nums[nums.length-1];
			for(i=nums.length-2;i>=0;i--)
			{
				temp = lastNume;
				lastNume = lastdeno;
				lastdeno = lastdeno*nums[i] + temp;
				gcd = Utils.gcd( lastNume, lastdeno );
				lastNume /= gcd;
				lastdeno /= gcd;
				trace(lastNume+"/"+lastdeno+" = "+lastdeno/lastNume);
			}
			var bits:Array = Utils.getBitArray( lastdeno );
			var sum:int = 0;
			for each(var bit:int in bits)
			{
				sum += bit;
			}
			super.showAnswerStr("The 100th of e is:"+lastdeno+" all bits sum is "+sum);
		}
	}
}