<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cognizant.edialgonsis.model.Medicare_Services"%>
    <%@page import="java.util.*" %>
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
</head>
<style>
body
{
	font-family: 'Quicksand', sans-serif;
	/*font-family: 'Playfair Display SC', serif;*/
}
.jumbotron
{
	background-repeat: none;
	background-image: url('aa1.jpg.jpg');
	background-size: 1200px  ;
	color: white;
	font-family: 'Cormorant SC', serif;
	
}
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-w">
  <a class="navbar-brand" href="#">E-Diagnosis</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact Us</a>
      </li>
      
      </ul>
      <ul class="navbar-nav navbar-right">
     <%if(session.getAttribute("name")!=null) 
     { %>
    	 <li class="nav-item" style="float:right;"> 
    	 <a class="nav-link" href="#login"><%=session.getAttribute("name") %></a>
         </li>
         <li class="nav-item" style="float:right;"> 
    	 <a class="nav-link" href="logoutController">Logout</a>
         </li>
    <%}%>
     
       
    </ul>
  </div>
</nav>


<div class="jumbotron">
  <h2 class="display-4">Hello, <%=session.getAttribute("name") %></h2>
  
  <hr class="my-4">
  <p>You can able to add and list the medicare Services</p>
 <a  class="btn btn-primary btn-lg" href="add_medicare_services.jsp">Add new Medicare Services</a>
</div>
<!--Table-->
 <%  List<Medicare_Services> list=(List<Medicare_Services>)session.getAttribute("medlist"); %>
      
<div class="container">
<h2>List of Medicare Services</h2>

<!-- Table  -->
<table class="table table-bordered ">
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
      
      <td><%= m.getId() %></td>
      <td><%= m.getName() %></td>
      <td><%= m.getDes() %></td>
      <td><%= m.getAmount() %></td>
  
       </tr>
     <%} %>
    
  </tbody>
  <!-- Table body -->
</table>
</div>
<!--Table-->
</body>
</html>




