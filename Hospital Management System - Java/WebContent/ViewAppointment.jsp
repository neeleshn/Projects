<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter Date here</title>
<script>
	function validate() {
		var doctorid = document.form2.doctorid.value;
		if (doctorid == "") {
			alert("Enter Doctor Id!");
			return false;
		}
		var date = document.form2.date.value;
		if (date == "") {
			alert("Enter Date!");
			return false;
		}
	}
</script>
</head>
<body>
<center>
<h3>*Enter date in dd/mm/yyyy format only</h3>
<form name="form2" method="POST" action="NewServlet"
	onsubmit="javascript:return validate();">
<table border="1" align="right">
	<tr>
		<td>Doc Id:</td>
		<td><input type="text" name="doctorid" value=""></input></td>
		<td>Date:</td>
		<td><input type="text" name="date" value=""></input></td>

		<td colspan="2" align="center"><input type="submit" name="submit"
			value="SearchDate"></input></td>
	</tr>
</table>
<input type="hidden" name="docid" value="<%%>"></input></form><br /><br />
<br /><a href="Success.jsp">click here to Go Home</a><br /><br />
<br />
<a href="DoctorLogin.jsp">Logout</a><br /><br />
</center>
</body>
</html>
