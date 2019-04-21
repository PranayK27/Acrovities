<%-- 
    Document   : signu
    Created on : 22 May, 2017, 10:01:14 AM
    Author     : joshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
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
    <form id="form2" name="signupform"  method="post" action="registration.jsp" onsubmit="return(validate());>
    <body>
       <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
      <p><a href="#"></a></p>
    </div>
      
    <div class="col-sm-8 text-left"> 
        <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">New User Registration</h3>
  </div>
  <div class="panel-body">     
      
         <center>
             
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
             <br/>
             
            <div class="row">
                 <div class="col-sm-4">
                     Already registered!! <a href="login.jsp">Login Here</a>
                 </div>
                 <div class="col-sm-4">
                     
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             </br>

   
         </center>
     
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
<form>
    </body>
</html>
