
  
  
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
top:200px;
left:700px;
}
</style>
</head>
<body>
	

  <div class="row">
  <div class="col-sm-6">
 
    <div class="card shadow-lg  mb-5" style="width:500px;">
    	<div id="header" style="background-image: url('cuslogin.jpg'); background-size: 500px 400px">
    <div class="container">
      <div class="card-body">
      <br>
        <h5 class="card-title rgba-black-strong" style="text-align:center; font-family: 'Lobster', cursive;" >Customer Login</h5>
        <br>

        </div>
        </div>
    </div>
        <form style="background-color:white" method="post" action="LoginController">
        <br>
  <div class="form-group">
  	<div class="container">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small></div>
  </div>
  <div class="form-group">
  	<div class="container">
    <label for="exampleInputPassword1">Enter Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password"></div>
  </div>

 <div class="container">
  <button type="submit" class="btn btn-primary btn-center btn-dark">Submit</button></div>
  
  <div class="container">
  <p style="float: left; font-size: 15px">Didn't have account?</p6><a href="registrationcustomer.jsp" style="float: left;"><p style="color:blue; font-size:15px; font-weight:bold;" >Sign In</p></a></div>
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