<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><center>
<h2>Patient's Observation</h2>
<form action="NewServlet" method="post">
<table align="center" border="0" cellspacing="10" cellpadding="5">
	<%
		PatientObservation p = (PatientObservation) request
				.getAttribute("patientObj");
	%>
	<!--<%
		System.out.println("patientjsp" + p.getOpdNo());
	%>
	--><tr><th>Patient Details</th>
	<th>Updated Observations</th>
	<th>Previous Observations</th>
	</tr>
	<tr>
		<td>OPD Number</td>
		<td><input type="text" name="updatepdNo"
			value="<%=p.getOpdNo()%>" disabled="disabled">
			<input type="hidden" name="updateOpdNo" value="<%=p.getOpdNo()%>" /></td>
	</tr>
	<!--<tr>
		<td>Name</td>
		<td><input type="text" align="middle" name="updateName"
			value="<%=p.getName()%>" disabled="disabled"> 
			<input type="hidden" name="updateName" value="<%=p.getName()%>" /></td>
	</tr>
	--><tr>
		<td>Advises</td>
		<td><textarea rows="3" name="updateAdvices">
		<%=p.getAdvices()%></textarea></td>
			<td><textarea rows="3" name="updateAdvices">
			<%=p.getAdvices()%></textarea></td>
	</tr>
	<tr>
		<td>Prescription</td>
		<td><textarea rows="3" name="updatePrescription">
		<%=p.getDoctorPrescription()%></textarea></td>
		<td><textarea rows="3" name="updateAdvices">
		<%=p.getDoctorPrescription()%></textarea></td>
	</tr>
	<tr>
		<td align="center" colspan="2"><input type="submit" name="submit"
			value="Update" /></td>
	</tr>
</table>
</form>
<br /><a href="Success.jsp">click here to Go Home</a><br /><br />
<br />
<a href="DoctorLogin.jsp">Logout</a><br /><br /></center>
</body>
</html>