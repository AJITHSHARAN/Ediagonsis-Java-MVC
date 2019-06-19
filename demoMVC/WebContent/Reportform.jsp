

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
</head>
<body>
	

  <div class="row">
  <div class="col-sm-6">
 
    <div class="card shadow-lg  mb-5" style="width:500px;">
    
    <div class="container">
      <div class="card-body">
        <h5 class="card-title rgba-black-strong" style="text-align:center; font-family: 'Lobster', cursive; color:black;" >Report Form</h5>
        <hr>

        </div>
        </div>
    
       <form class="text-center border border-light p-5" method="post" action="ReportController">
       <input type="hidden" name="request_id" value="<%=request.getAttribute("request_id") %>">
  <div class="form-group">
  	<div class="container">
    <label for="exampleInputEmail1">Service Date</label>
<input type="date" id="defaultContactFormName" class="form-control mb-4" placeholder="Service Date" name="sdate">
  </div>
  <div class="form-group">
  	<div class="container">
    <label for="exampleInputPassword1">Result Date</label>
<input type="date" id="defaultContactFormName" class="form-control mb-4" placeholder="Result Date" name="rdate">
  </div>
  <div class="form-group">
    <div class="container">
    <label for="exampleInputEmail1">Diagnosis Test 1</label>
    <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Actual Value" name="act1">

  </div>
  <div class="form-group">
    <div class="container">
  <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Normal value" name="nor1">  </div>
  <div class="form-group">
    <div class="container">
    <label for="exampleInputEmail1">Diagnosis Test 2</label>
    <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Actual Value" name="act2">

  </div>
  <div class="form-group">
    <div class="container">
   
    <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Normal value" name="nor2">
  </div>
  <div class="form-group">
    <div class="container">
    <label for="exampleInputEmail1">Diagnosis Test 3</label>
    <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Actual Value" name="act3">

  </div>
  <div class="form-group">
    <div class="container">
  
    <input type="text" id="defaultContactFormName" class="form-control mb-4" placeholder="Normal value" name="nor3">
  </div>

 <div class="container">
  <button type="submit" class="btn btn-dark btn-center">Submit Report</button></div>
  
  
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