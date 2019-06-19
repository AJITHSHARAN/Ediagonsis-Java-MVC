<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cognizant.edialgonsis.model.Request"%>
    <%@ page import="java.util.*"  %><!DOCTYPE html>
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
	background-image: url('doclanding.jpg');
	background-size: 1200px  ;
	color: white;
	font-family: 'Cormorant SC', serif;
	
}
</style>
</head>
<body>

<div class="jumbotron">
  <h2 class="display-4">Hello,<%=session.getAttribute("name") %></h2>
  
  <hr class="my-4">
  <p>You can able to accept the patient request and generate Report </p>

</div>
<br>
<a href="add_medicare_services.jsp">Add new Medicare Services</a>
<!--Table-->
<div class="container">
<h2>List of Medicare Services</h2>


 <% List<Request> list=(List<Request>)session.getAttribute("reqlist"); %>
 
   <table class="table table-bordered ">

  <!--Table head-->
  <thead>
    <tr>
    <th>Request_id</th>
      <th>Medicare_service_id</th>
      <th>Customer_id</th>
      <th>date</th>
      <th>status</th>
            <th>Accept</th>
    </tr>
  </thead>
  <!--Table head-->

  <!--Table body-->
     
  <tbody>
     <% if(list.isEmpty()==false) %>
     <% for(Request m: list) 
        {
          if(m.getStatus().equals("pending"))
          {%>
         <tr class="table-info">
      <td><%= m.getRequest_id() %></td>
      <td><%=m.getMedicare_id() %></td>
      <td><%= m.getCustomer_id() %></td>
      <td><%=m.getDate() %></td>
      <td><%=m.getStatus() %>
      <td> <a href="ReportController?mid=<%=m.getRequest_id()%>" class="btn btn-dark">Accept</a></td>
    
       </tr>
     <%} %>
     <%} %>
  </tbody>
  <!--Table body-->


</table>

</body>
</html>