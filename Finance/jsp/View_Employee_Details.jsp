<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.finance.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.finance.EmployeeBean"
      %>

<html>

<head>
	<TITLE>EFIS</TITLE>
	<script language = "JavaScript">		
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
			<label><b>Name</b></label>
		</td>
		<td>
			<input type="text" name="Name" readonly value="<%= empRecord.getName()%>">
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
			<label><b>Basic Salary</b></label>
		</td>
		<td>
			<input type="text" name="BasicSalary" readonly value="<%= empRecord.getBasicSalary()%>">
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>HRA</b></label>
		</td>
		<td>
			<input type="text" name="HRA" readonly value="<%= empRecord.getHRA()%>">
		</td>
	</tr>
	<tr >
		<td colspan="2"><br>
		</td>		
	</tr>
	<tr >
		<td>
			<label><b>LTA</b></label>
		</td>
		<td>
			<input type="text" name="LTA" readonly value="<%= empRecord.getLTA()%>">
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
