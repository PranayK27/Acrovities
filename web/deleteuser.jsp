<%@ include file = "header.jsp" %>
 <center>
        <form id="form6" method="post" action="jdeleteuser.jsp">
        <h2>Delete User!!!!</h2>
        
                                <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                 <div class="col-sm-2">
                  Enter Enrollment no:
                 </div>
                 <div class="col-sm-6">
                   <input type ="text" class="form-control" name="delen" value="" /> 
                 </div>
                                    <div class="col-sm-2">
                                    </div>
                                    </div>
                 
             <br/>
               <div class="row">
             <div class="col-sm-2">
                                    </div>
              <div class="col-sm-2">
                  Enter Year:
                 </div>
                 <div class="col-sm-6">
                   <input type ="text" class="form-control" name="dely" value="" /> 
                 </div>
                 <div class="col-sm-2">
                                    </div>
               </div>
             <br/>
               <div class="row">
               <div class="col-sm-2">
                                    </div>
                    <div class="col-sm-2">
                                    </div>
                 <div class="col-sm-6">
                   <button class="btn btn-success" type="submit" name="delete">Delete</button>
                 </div>
                  <div class="col-sm-2">
                                    </div>
               </div>
             <br/>
<%@ include file = "footer.jsp" %>