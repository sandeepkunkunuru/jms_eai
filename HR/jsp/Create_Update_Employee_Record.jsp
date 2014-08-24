<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.hr.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.hr.EmployeeBean" %>

<%

String operation = "";
int empID = 0;
EmployeeBean newEmp = new EmployeeBean();

newEmp.setFirstName(request.getParameter("FirstName"));
newEmp.setMiddleName(request.getParameter("MiddleName"));
newEmp.setLastName(request.getParameter("LastName"));
newEmp.setAddress(request.getParameter("Address"));
newEmp.setDesignation(request.getParameter("Designation"));
newEmp.setGender(request.getParameter("Gender"));

if(request.getParameter("JoiningDate") != null){
	newEmp.setJoiningDate(request.getParameter("JoiningDate"));
	empID = Integer.parseInt(request.getParameter("EmployeeID")); 
	operation = "updated";	
	EmployeeRecordHandler.updateEmployeeRecord(newEmp,empID);
}else{
	newEmp.setJoiningDate(request.getParameter("JoiningMonth") 
					  + " - "+ request.getParameter("JoiningDay")
					  + " - "+ request.getParameter("JoiningYear"));
	operation = "created";
	empID = EmployeeRecordHandler.createEmployeeRecord(newEmp);
}
%>
<html>
<body>
	<table align="center">
		<tr >
			<td colspan="2"><br>
			</td>		
		</tr>
		<tr>
			<td>
				<label><font size="4pt" color="green"> Employee Record <%= operation%> successfully for employee 
				<%= newEmp.getLastName() + " " +  newEmp.getMiddleName() + " " +  newEmp.getFirstName()%> 
				with EmpId <%= empID%></font></label>
			</td>
		</tr>
	</table>
</body>
</html>
