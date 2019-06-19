<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cognizant.edialgonsis.model.Report"%>
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

s
<br>

<!--Table-->
<div class="container">
<h2>List of Medicare Services</h2>


 <% List<Report> list=(List<Report>)session.getAttribute("replist"); %>
 
   <table class="table table-bordered ">

  <!--Table head-->
  <thead>
    <tr>
   
      <th>Customer_id</th>
      <th>Medicare_Service_id</th>
      <th>Service Date</th>
            <th>Test Result</th>
            <th>Actual Value 1</th>
      <th>Normal Value 1</th>
      <th>Actual Value 2</th>
      <th>Normal Value 2</th>
      <th>Actual Value 3</th>
      <th>Normal Value 3</th>
    </tr>
  </thead>
  <!--Table head-->

  <!--Table body-->
     
  <tbody>

     <% for(Report m: list) 
        {%>
         <tr class="table-info">
      
      <td><%=m.getDid() %></td>
      <td><%=m.getMid() %></td>
      <td><%= m.getRdate() %></td>
      <td><%=m.getSdate() %></td>
      <td><%=m.getAct1() %></td>
      <td><%= m.getNor1() %></td>
      <td><%=m.getAct2() %></td>
      <td><%= m.getNor2() %></td>
      <td><%=m.getAct3() %></td>
      <td><%=m.getNor3() %></td>
   
      
    
       </tr>
     <%} %>
    
  </tbody>
  <!--Table body-->


</table>

</body>
</html>