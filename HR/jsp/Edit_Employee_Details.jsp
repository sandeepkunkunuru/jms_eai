<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.hr.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.hr.EmployeeBean"
       %>

<html>

<head>
	<TITLE>Enter employee details</TITLE>
	<script language = "JavaScript">		
		function validateID(){
			var ID = document.forms[0].EmployeeID.value;
			var name = document.forms[0].EmployeeName.value;			
			if( ID == null && name == null){
					alert("Please enter a employee id or name!");
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
<form onsubmit="javascript: return validateID()" action="Edit_Employee_Details.jsp">
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
			<input type="Submit" Value="Edit Employee Record">
		</td>
	</tr>
<table>
</form>

<%}else{
	EmployeeBean empRecord = EmployeeRecordHandler.getEmployeeDetails(Integer.parseInt(empID));
%>
<form action="Create_Update_Employee_Record.jsp">
<input type ="Hidden"  name ="EmployeeID" value = "<%=empID%>">
<table align="center" >
	<tr >
		<td colspan="2">
			<label><font size="4pt" color="green">Edit Employee Information</font></label>
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
			<input type="text" name="FirstName"  value="<%= empRecord.getFirstName()%>">
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
			<input type="text" name="MiddleName" value="<%= empRecord.getMiddleName()%>">
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
			<input type="text" name="LastName"  value="<%= empRecord.getLastName()%>">
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
			<textarea name="Address" cols="40" rows="4" ><%= empRecord.getAddress()%></textarea>
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
			<input type="text" name="Designation" value="<%= empRecord.getDesignation()%>">
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
	<tr >
		<td colspan="2" align="center">
			<input type="submit" Value="Edit">
		</td>
	</tr>
</table>
</form>
<%}%>
</body>
</html>
