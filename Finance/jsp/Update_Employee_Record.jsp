<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.finance.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.finance.EmployeeBean" %>

<%
EmployeeBean newEmp = new EmployeeBean();

newEmp.setName(request.getParameter("Name"));
newEmp.setBasicSalary(request.getParameter("BasicSalary"));
newEmp.setHRA(request.getParameter("HRA"));
newEmp.setLTA(request.getParameter("LTA"));
newEmp.setDesignation(request.getParameter("Designation"));

int empID = Integer.parseInt(request.getParameter("EmployeeID")); 

EmployeeRecordHandler.updateEmployeeRecord(newEmp,empID);

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
				<label><font size="4pt" color="green"> Employee Record updated successfully for employee 
				<%= newEmp.getName()%> 
				with EmpId <%= empID%></font></label>
			</td>
		</tr>
	</table>
</body>
</html>
