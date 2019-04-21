
<%@ include file = "headercommon.jsp" %>
        <div class="jumbotron">
            <center>
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
    <h3 class="panel-title">Login</h3>
  </div>
  <div class="panel-body">
         
                            <form id="form1" method="post" action="login_1.jsp">
                                <div class="row">
                 <div class="col-sm-4">
                     Enrollment No.:
                 </div>
                 <div class="col-sm-4">
                     <input type ="text" placeholder="0827it" class="form-control" name="eno" value="" required/>               
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
                     <input type ="password" placeholder="eng@123" class="form-control" name="pwd" value="" required/>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
                                             </div>
             <br/>
                                <div class="row">
                 <div class="col-sm-4">
                     
                 </div>
                 <div class="col-sm-4">
                     <input class="btn btn-success" type="submit" value="Submit"/>
                     <a href="#">Forgot your password?</a>
                 </div>
                 <div class="col-sm-4">               
                 </div>                  
             </div>
             <br/>


                                
                               
				</form>   
      </div>
        </div>
      </div>
      </center>      
        
  </div>
       <%@ include file = "footer.jsp" %>
  
        
  