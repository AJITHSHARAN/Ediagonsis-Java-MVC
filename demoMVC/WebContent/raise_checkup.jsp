<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cognizant.edialgonsis.model.Medicare_Services"%>
    <%@page import="java.util.*" %>
 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cinzel+Decorative&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Lobster|Playfair+Display+SC&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
body
{
  color: black;
	font-family: 'Quicksand', sans-serif;
	/*font-family: 'Playfair Display SC', serif;*/
}
h5
{
color:white;
font-family: 'Lobster', cursive;
font-size:35px;
opacity: 0.6;
}
.card
{
	border-radius:10px;
top:10px;
left:700px;
}
</style>
<SCRIPT TYPE="text/javascript">
/* Function called on change event of Dept Drop Down */ 
function populatedoctorMenu() {

var selectedIndexVal = document.getElementById("medi").selectedIndex;
var selectedMed =document.getElementById("medi").options[selectedIndexVal].value;

callAjaxFunction(selectedMed);
}
/* function called to do Ajax Request */
function callAjaxFunction(selectedMed){
var url="CheckupController?medVal="+selectedMed;
var xmlHttp;
if (window.XMLHttpRequest) { // Mozilla, Safari, ...
var xmlHttp = new XMLHttpRequest();
} else if (window.ActiveXObject) { // IE
var xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
}
xmlHttp.open('POST', url, true);
xmlHttp.onreadystatechange = function() {
if (xmlHttp.readyState == 4) {
updatepage(xmlHttp.responseText);
}
}
xmlHttp.send(url);
}
/* Call back function of Ajax Response*/
function updatepage(response){
//alert(str);
document.getElementById("result").innerHTML = response;
}
</SCRIPT>
</head>
<body>
	
<%  List<Medicare_Services> list=(List<Medicare_Services>)request.getAttribute("medlist"); %>
  <div class="row">
  <div class="col-sm-6">
 
    <div class="card shadow-lg  mb-5" style="width:500px;">
    
    <div class="container">
      <div class="card-body">
        <h5 class="card-title rgba-black-strong" style="text-align:center; font-family: 'Lobster', cursive; color:black;" >Report Form</h5>
        <hr>

        </div>
        </div>
    
        <form style="background-color:white" method="post" action="RequestController">
  <div class="form-group">
  	<div class="container">
  	<input type="hidden" name="cusname" value="<%=session.getAttribute("cusname") %>">
  	<label>Select Medical Services</label>
    <select class="browser-default custom-select mb-4" name="mname" onChange="populatedoctorMenu()" id="medi" >
        <option value="" selected disabled>Select medicare Services</option>
        <% for(Medicare_Services m: list) 
        {
        %>
        	<option value= "<%= m.getName()%>"><%= m.getName() %></option>
       <%} %> 
       </select></div>
  </div>
  <div class="form-group">
  	<div class="container">
  
   <div id="result"></div>
  </div>
  <div class="form-group">
    <div class="container">
     	<label>Date</label>
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter date" name="date">
  </div>
  <br>
 <div class="container">
  <button type="submit" class="btn btn-primary btn-center">Submit</button></div>
  
  <br>
  <br>
</form>
</div>
      </div>
    </div>
  </div>
  </div>
  
  </body>
  </html>
