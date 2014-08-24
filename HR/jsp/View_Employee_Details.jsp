<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.hr.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.hr.EmployeeBean"
      %>

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
		function validateID(){
			var ID = document.forms[0].EmployeeID.value;					
			if( ID == null ){
					alert("Please enter a employee id!");
				return false
			}else{
				return true;
			}
			
		}	
	</script>
</head>

<body>
<%
String empID =  request.getParameter("EmployeeID");

if(empID == null ){ %>
<form onsubmit="javascript: return validateID()" action="View_Employee_Details.jsp">
<table align="center">
	<tr>
		<td colspan="2">
			<label><font color="green" size="4pt">Enter Employee ID<font></label>
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr>
		<td >
			<label><font color="green" size="4pt">Employee ID<font></label>
		</td>
		<td>
			<input type="text" name="EmployeeID">
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="Submit" Value="View Employee Record">
		</td>
	</tr>
<table>
</form>

<%}else{
	EmployeeBean empRecord = EmployeeRecordHandler.getEmployeeDetails(Integer.parseInt(empID));	
%>
<form onsubmit="javascript: return validateJoiningDate()" action="View_Employee_Details.jsp">
<table align="center" >
	<tr >
		<td colspan="2">
			<label><font size="4pt" color="green">View Employee Information</font></label>
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
			<input type="text" name="FirstName" readonly value="<%= empRecord.getFirstName()%>">
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
			<input type="text" name="MiddleName" readonly value="<%= empRecord.getMiddleName()%>">
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
			<input type="text" name="LastName" readonly value="<%= empRecord.getLastName()%>">
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
			<textarea name="Address" cols="40" rows="4" readonly><%= empRecord.getAddress()%></textarea>
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
			<input type="text" name="Designation" readonly value="<%= empRecord.getDesignation()%>">
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
			<input type="text" name="Gender" readonly value="<%= empRecord.getGender()%>">
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
			<input type="text" name="JoiningDate" readonly value="<%= empRecord.getJoiningDate()%>">
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>	
</table>
</form>
<%}%>
</body>
</html>
