<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cognizant.edialgonsis.model.Medicare_Services"%>
   <%@page import="java.util.*" %>
   <%@page import="com.cognizant.edialgonsis.model.Doctor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative&display=swap" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Cormorant+SC&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
body
{
	font-family: 'Quicksand', sans-serif;
	/*font-family: 'Playfair Display SC', serif;*/
}
.jumbotron
{
	background-repeat: none;
	background-image: url('cuslanding.jpg');
	background-size: 1200px  ;
	color: white;
	font-family: 'Cormorant SC', serif;
	
}
</style>
</head>
<body>
<%  String cusName=(String)session.getAttribute("username"); %>
 <%  List<Medicare_Services> list=(List<Medicare_Services>)session.getAttribute("medlist"); %>
 <%  List<Doctor> list1=(List<Doctor>)session.getAttribute("doclist"); %>
<div class="jumbotron">
  <h2 class="display-4">Hello, <%= session.getAttribute("username") %></h2>
  
  <hr class="my-4">
  <p>Customer can able to view the medicare Details and Doctor Details </p>
  <p><a class="btn btn-primary btn-lg" href="CheckupController?name=<%=session.getAttribute("customername")%>" >Raise Request</a>&nbsp &nbsp &nbsp<a class="btn btn-primary btn-lg" href="ViewReportController?name=<%=session.getAttribute("customername")%>" role="button">View Report</a></p>
</div>
<br>
<div class="container">
<h2>List of Medicare Services</h2>

<!-- Table  -->
<table class="table table-bordered table-hover">
  <!-- Table head -->
  <thead>
    <tr>
      
      <th>Medicare_service_ID</th>
      <th>Name</th>
      <th>Description</th>
      <th>Amount</th>
    </tr>
  </thead>
  <!-- Table head -->

  <!-- Table body -->
  <tbody>
    <% for(Medicare_Services m: list) 
        {%>
         <tr class="table-info">
      <td><%= m.getId() %></td>
      <td><p><%= m.getName() %></p></td>
      <td><p><%= m.getDes() %></p></td>
      <td><p><%= m.getAmount() %></p></td>
  
       </tr>
     <%} %>
    
  </tbody>
  <!-- Table body -->
</table>
</div>
<br>
<br>
<div class="container">
<h2>List of Doctors</h2>

<!-- Table  -->
<table class="table table-bordered table-hover">
  <!-- Table head -->
  <thead>
    <tr>

      <th>Name</th>
      <th>Email</th>
      <th>Work Hours</th>
       <th>Contact Number</th>
      <th>Hospital Name</th>
    </tr>
  </thead>
  <!-- Table head -->

  <!-- Table body -->
  <tbody>
    <% for(Doctor m1: list1) 
        {%>
        <tr class="table-info">
      <td><p><%= m1.getFname() %></p></td>
      <td><p><%= m1.getEmail() %></p></td>
      <td><p><%= m1.getWorkhours() %></p></td>
      <td><p><%= m1.getContact() %></p></td>
       <td><p><%= m1.getHospital_name() %></p></td>
       </tr>
     <%} %>
  </tbody>
  <!-- Table body -->
</table>
</div>

<!-- Table  -->
</body>
</html>