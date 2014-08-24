<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.hr.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.hr.EmployeeBean"
     %>

<html>

<head>
	<TITLE>Enter employee details</TITLE>
	<script language = "JavaScript">		
		function validateID(){
			var ID = document.forms[0].EmployeeID.value;					
			if( ID == null){
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

if(empID == null){ %>
<form onsubmit="javascript: return validateID()" action="Delete_Employee_Details.jsp">
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
			<input type="Submit" Value="Delete Employee Record">
		</td>
	</tr>
<table>
</form>

<%}else{
	EmployeeRecordHandler.deleteEmployeeDetails(Integer.parseInt(empID));	
%>
<table align="center">
	<tr >
		<td><br>
		</td>		
	</tr>
	<tr>
		<td>
			<label><font color="red" size="4pt">Record of the Employee with ID - <%= empID %> has been deleted</font>
			</label>
		</td>
	</tr>
</table>
<%}%>
</body>
</html>
