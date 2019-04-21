<!DOCTYPE html>
<html lang="en">
<head>
  <title>Acrovities Project</title>
  <meta charset="utf-8">
   <link rel="icon" href="icon.png" type="image/gif" sizes="16x16">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
  <script type="text/javascript">
function validate()
{ 
    if( document.signupform.mob.value =="" ||
    isNaN( document.signupform.mob.value) ||
    document.signupform.mob.value.length != 10 )
    {
      alert( "Please provide a Mobile No in the format (98273.....)" );
      document.signupform.mob.focus() ;
    return false;
    }
    var email = document.signupform.eid.value;
    atpos = email.indexOf("@");
    dotpos = email.lastIndexOf(".");

    if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
    {
    alert("Please enter correct email ID");
    document.signupform.eid.focus() ;
    return false;
    }

    if( document.signupform.pwd.value!=document.signupform.cpwd.value)
    {
      alert( "Password and confirm password do not match" );
      document.signupform.cpwd.focus() ;
    return false;
    }

 return( true );
}
</script>
  
  
</head>
<body>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="ca.jpg" alt="Acrovities" style="width:100%">
        <div class="carousel-caption">
          <h3>Acrovities</h3>
          <p>Developed by TechBuddies</p>
        </div>
      </div>

      <div class="item">
        <img src="2.jpg" alt="Acrovities" style="width:100%">
        <div class="carousel-caption">
          <h3>Acrovities</h3>
          <p>Developed by TechBuddies</p>
        </div>
      </div>
    
      <div class="item">
        <img src="3.jpg" alt="New York" style="width:100%">
        <div class="carousel-caption">
          <h3>Acrovities</h3>
          <p>Developed by TechBuddies</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

      
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
     
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"> Home</span></a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        <li><a href="signu.jsp">Sign Up</a></li>
        <li><a href="contactus.jsp"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>
