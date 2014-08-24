<%-- Import statements --%>
<%@ page import = "com.ou.mtechminiproject.sandeep.finance.EmployeeRecordHandler,com.ou.mtechminiproject.sandeep.finance.EmployeeBean"
       %>

<html>

<head>
	<TITLE>EFIS</TITLE>
</head>

<body>

<form onsubmit="javascript: return validateID()" action="Edit_Employee_Details.jsp">
<table align="center">
	<tr>
		<td >
			<label><font color="green" size="4pt">Pending Employee Record IDs</font></label>
		</td>
	</tr>
	<tr >
		<td ><br>
		</td>		
	</tr>

<%
int[] pendRecIds = EmployeeRecordHandler.getPendingRecords();

for(int i = 0; i < pendRecIds.length; i++){
%>
	<tr>
		<td align="center">
			<Label ><%=pendRecIds[i]%></label>
		</td>
	</tr>
<%}%>	
<table>
</form>
</body>
</html>
