
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
<!-- Bootstrap core CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title></title>
</head>
<style>
a
{
color:white;
}
.bg-img {
  /* The image used */
  background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url("landing_image.jpg");

  min-height: 700px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;

  /* Needed to position the navbar */
  position: relative;
}
.class1 .class2 {
  position: absolute;
  top: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0); /* Black background with 0.5 opacity */
  width: 100%;
  padding: 5px;
}
.container
{
text-align:center;
}
.container.center
{
text-align:center;
}
{
color:white
}
</style>
<body>
<div class="class1">
 <div class="bg-img"></div>
 <div class="class2">
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
      <li class="nav-item" style="float:right;">
         <% if()
        <a class="nav-link" href="#login">Contact Us</a>
      </li>
    </ul>
  </div>
</nav>
</div></div> 
  <div class="jumbotron" id="login">
  <h4 class="display-4" style="text-align:center">Continue With</h4>
  <br><br>
 <div class="container">
<div class="row">
<div class="col-md-4"><div class="center"><i class="fas fa-user-md fa-7x" style="color:#6a1b9a"><br>
<h4><a href="doctorlogin.jsp">Doctor</a></h4></h5></i></div></div>
<div class="col-md-4"><div class="center"><i class="fas fa-users fa-7x" style="color:#bf360c"><br><h4><a href="customersLogin.jsp"">Customer</a></h4></i></div></div>
<div class="col-md-4"><div class="center"><i class="fas fa-user-shield fa-7x" style="color:#0099CC"><br><h4><a href="adminlogin.jsp">Admin</a></h4></i></div></div>
</div>
</div>
</div>
</div>
</body>
</html>