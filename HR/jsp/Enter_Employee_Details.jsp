<html>

<head>
	<TITLE>Enter employee details</TITLE>
	<script language = "JavaScript">
		function validateJoiningDate(){
			var monthValue = document.forms[0].JoiningMonth.options[document.forms[0].JoiningMonth.selectedIndex].value;
			var dayValue = document.forms[0].JoiningDay.options[document.forms[0].JoiningDay.selectedIndex].value;			
			if( (monthValue == 2 || monthValue == 4 || monthValue == 6 || monthValue == 9 || monthValue == 11 ) &&
				(dayValue == 31 )){
					alert("Date is invlaid for the selected month");
				return false
			}else{
				return true;
			}
			
		}	
	</script>
</head>

<body><form onsubmit="javascript: return validateJoiningDate()" action="Create_Update_Employee_Record.jsp">
<table align="center" >
	<tr >
		<td colspan="2">
			<label><font size="4pt" color="green">Enter New Employee Information</font></label>
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>First Name</b></label>
		</td>
		<td>
			<input type="text" name="FirstName" >
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>Middle Name</b></label>
		</td>
		<td>
			<input type="text" name="MiddleName" >
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>Last Name</b></label>
		</td>
		<td>
			<input type="text" name="LastName" >
		</td>
	</tr >
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>Address</b></label>
		</td>
		<td>
			<textarea name="Address" cols="40" rows="4" ></textarea>
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>Designation</b></label>
		</td>
		<td>
			<input type="text" name="Designation" >
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>Gender</b></label>
		</td>
		<td>
			<select name="Gender" id="sex"><option value="">[Select] 
				<option value="m">Male</option>
				<option value="f">Female</option>
			</select>
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>Joining Date</b></label>
		</td>
		<td>
			<select name="JoiningMonth" id="month"><option value="">[Month] 
				<option value="1">January</option>
				<option value="2">February</option>
				<option value="3">March</option>
				<option value="4">April</option>
				<option value="5">May</option>
				<option value="6">June</option>
				<option value="7">July</option>
				<option value="8">August</option>
				<option value="9">September</option>
				<option value="10">October</option>
				<option value="11">November</option>
				<option value="12">December</option>
			</select>
			<select name="JoiningDay" id="day"><option value="">[Day] 
				<option value="1">01</option>
				<option value="2">02</option>
				<option value="3">03</option>
				<option value="4">04</option>
				<option value="5">05</option>
				<option value="6">06</option>
				<option value="7">07</option>
				<option value="8">08</option>
				<option value="9">09</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>
			<select name="JoiningYear" id="year"><option value="">[Year] 
				<option value="2001">2001</option>
				<option value="2002">2002</option>
				<option value="2003">2003</option>
				<option value="2004">2004</option>
				<option value="2005">2005</option>
				<option value="2006">2006</option>
				<option value="2007">2007</option>
				<option value="2008">2008</option>
				<option value="2009">2009</option>
				<option value="2010">2010</option>				
			</select>
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td colspan="2" align="center">
			<input type="submit" Value="Create">
		</td>
	</tr>
</table>
</form></body>
</html>
