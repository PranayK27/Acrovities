<!Doctype html>
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
    if( document.mobilenumbervalidation.mob.value == "" ||
    isNaN( document.mobilenumbervalidation.mob.value) ||
    document.mobilenumbervalidation.mob.value.length != 10 )
    {
      alert( "Please provide a Mobile No in the format (98273.....) an upto 10 digits" );
      document.mobilenumbervalidation.mob.focus() ;
    return false;
    }

    var email = document.mobilenumbervalidation.eid.value;
    atpos = email.indexOf("@");
    dotpos = email.lastIndexOf(".");

    if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
    {
    alert("Please enter correct email ID");
    document.mobilenumbervalidation.eid.focus() ;
    return false;
    }

    if( document.mobilenumbervalidation.pwd.value!=document.mobilenumbervalidation.cpwd.value)
    {
      alert( "Password and confirm password do not match" );
      document.mobilenumbervalidation.cpwd.focus() ;
    return false;
    }

 return(false);
}
</script>
</head>

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
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"> Home</span></a></li>
        <li><a href="aboutus.jsp">About Us</a></li>
        <li><a href="signup.jsp">Sing Up</a></li>
        <li><a href="contactus.jsp"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span> Contact Us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>


<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
    </div>

   
    <div class="col-sm-8 text-left"> 
<br/>
  <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-titleNew User Registrationh3">
  </div>
  <div class="panel-body">     
<h2 align="center">New User Registration</h2>
<form method="get" action="welcome.jsp" name="mobilenumbervalidation" onsubmit="return(validate());">
<div class="row">
                 <div class="col-sm-4">
                     Enrollment No.
                 </div>
                 <div class="col-sm-4">
                     <input type ="text" placeholder="0827it" class="form-control"  name="eno" value="" required/>               
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>
             
              <div class="row">
                 <div class="col-sm-4">
                     Email Id: 
                 </div>
                 <div class="col-sm-4">
                     <input type ="text" placeholder="abc@gmail.com" class="form-control" id="eid" name="eid" value="" required/>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             
             <br/>
             <div class="row">
                 <div class="col-sm-4">
                     Password: 
                 </div>
                 <div class="col-sm-4">
                     <input type ="password" placeholder="password" class="form-control" id="pwd" name="pwd" value="" required/>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>
             
             <div class="row">
                 <div class="col-sm-4">
                     Confirm Password: 
                 </div>
                 <div class="col-sm-4">
                     <input type ="password" placeholder="confirm password" class="form-control" id="cpwd" name="cpwd" value="" required/>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>

            <div class="row">
                 <div class="col-sm-4">
                     Mobile no: 
                 </div>
                 <div class="col-sm-4">
                     <input type ="text" placeholder="+91 or +731" class="form-control" id="mob" name="mob" value="" required/>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>
             <div class="row">
                 <div class="col-sm-4">
                     Course: 
                 </div>
                 <div class="col-sm-4">
                     <select name="course" class="form-control">
                                                <option value="Select Course">Select Course</option>
                                                <option value="BE">BE</option>
                                                <option value="MBA">MBA</option>
                                                <option value="MCA">MCA</option>
                                                <option value="B.Pharma">B.Pharma</option>
                                                <option value="BBA">BBA</option>
                                                <option value="BCA">BCA</option>
                                            </select>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>
<div class="row">
                 <div class="col-sm-4">
                     Year: 
                 </div>
                 <div class="col-sm-4">
                     <select name="year" class="form-control">
                                                  <option value="Select Year" >Select Year</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                               
                                            </select>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>
             <div class="row">
                 <div class="col-sm-4">
                     College:
                 </div>
                 <div class="col-sm-4">
                     <select name="clg" class="form-control">
                                                  <option value="Select College">Select College</option>
                                                <option value="AITR">AITR</option>
                                                <option value="AIMR">AIMR</option>
                                                <option value="ATC">ATC</option>                                  
                                            </select>
                 </div>
      
  </div>

          
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>
             <br/><br/>
            <div class="row">
                 <div class="col-sm-4">
                  
                 </div>
                 <div class="col-sm-4">
                        <input class="btn btn-success" type="submit" value="Submit" />
                     <input class="btn btn-primary" type="reset" value="Reset" />
                 </div>
                 <div class="col-sm-4">               
                     
                 </div> 
                
             </div>
             </form>
             <br/>
             
            
       
   </div>

  </div>

    <div class="col-sm-2 sidenav">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

    </body>
<%@ include file = "footer.jsp" %>

