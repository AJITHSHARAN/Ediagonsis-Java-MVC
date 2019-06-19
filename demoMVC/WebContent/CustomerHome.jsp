<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
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
<%=session.getAttribute("customername")%>
<a href="CheckupController?name=<%=session.getAttribute("customername")%>">Raise Checkup Request</a>
</body>
</html>