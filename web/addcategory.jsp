<%@ include file = "header.jsp" %>

    <center>
        <form id="form5" method="post" action="jaddcategory.jsp">
        <h2>Add Category...</h2>
        
                                <div class="row">
                                    <div class="col-sm-2">
                                    </div>
                 <div class="col-sm-2">
                    New Category Name:
                 </div>
                 <div class="col-sm-6">
                   <input type ="text" class="form-control" name="category_name" value="" required/> 
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
                     <a href="jaddcategory.jsp"><input class="btn btn-success" type="submit" value="Add" /></a>
                 </div>
                 
                 <div class="col-sm-2">
                                    </div>
                     </form>
                 </div>
                 
               
             </div>
             <br/>
        </form>
    </center>
      
       
       <%@ include file = "footer.jsp" %>
  