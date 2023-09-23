<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reports App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>

 <div class="container">
 <hr> <hr>
 <h3 class="pb-3 pt-3" align="center">Report Application</h3>

 
 <form:form  action="/search" modelAttribute="search" method="POST">
 
 <table>
 <tr>
 	<td  class="pt-3 pb-3">Plan Name:</td>
 		<td>
 			<form:select path="planName">
 			<form:option value="">-Select-</form:option>
 			<form:options items="${names}" /> 
 			</form:select>
  		</td> 
  		
  		
  	<td  class="pt-3 pb-3">Plan Status:</td>
 		<td>
 			<form:select path="planStatus">
 			<form:option value="">-Select-</form:option>
 			<form:options items="${status}" /> 
 			</form:select>
  		</td>
  		
  		
  	<td  class="pt-3 pb-3">Gender:</td>
  	<td>
 			<form:select path="gender">
 			<form:option value="">-Select-</form:option>
 			<form:option value="Male">Male</form:option>
 			<form:option value="Fe-Male">Fe-Male</form:option>
 			</form:select>
  	</td> 
 </tr>
 
 
 <tr>
 	<td  class="pt-3 pb-3">Start Date:</td>
 	<td><form:input path="startDate" type="date"/></td>
 	<td  class="pt-3 pb-3">End Date:</td>
 	<td><form:input path="endDate" type="date"/></td>
 </tr>
 <tr>
 <td>
 <input type="submit" value="Search" class="btn btn-primary" />
 </td>
 </tr>
 
 
 
 </table>
 </form:form>
 
 <hr> <hr>
 
 Export:- <a href="">Excel</a>  or <a href="">Pdf</a>
  </div>













 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>