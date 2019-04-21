<%@ include file = "header.jsp" %>
<%@ page import ="java.sql.*" %>
<center>
        <form id="form5" method="post" action="jaddevent.jsp">
             <div class="row">
                 <div class="col-sm-2">   
                 </div>
                  <div class ="col-sm-2">Category:</div>
                 <div class="col-sm-6">
        
                     
                     <%
                     Class.forName("com.mysql.jdbc.Driver");
                     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
                     Statement st = con.createStatement();
                     ResultSet rs=st.executeQuery("select * from addcategory");
        
                     %>          
                     
                   
                   <select name="category_name" class="form-control">
                       
                       <%
                           while(rs.next()){
                           %>
                    <option value="<%=rs.getString(2)%>"> <%=rs.getString(2)%> </option>
                   <%}%>                                                                   
                    </select>
                 </div>
                 <div class ="col-sm-2"></div>
             </div>      
                 
                 <div class="row">
                 <div class="col-sm-2">         
                 </div>
                 <div class ="col-sm-2"> New Event:</div>
                 <div class="col-sm-6">
                     <input type="text" placeholder="enter event name" class="form-control" name="event_name" required=""/>
                 </div>
                     
                      <div class ="col-sm-2"></div>
             </div>      
         <div class="row">
            <div class="col-sm-2">
                   
                 </div>
              <div class ="col-sm-2">Description:</div>
                 <div class="col-sm-6">
                  <textarea type="text" class="form-control" name="description" rows="10" cols="80" ></textarea>
                 </div>
                 <div class ="col-sm-2"></div>
             </div>     
            <div class="row">
                 <div class="col-sm-2">
                 
                 </div>
                <div class="col-sm-2">
                 Duration:
                 </div>
                 <div class="col-sm-6">
                 <input type="text" class="form-control "name="duration" />
                 </div>
                  <div class ="col-sm-2"></div>
             </div>    
            <div class="row">
                 <div class="col-sm-2">
                 
                 </div>
                <div class="col-sm-2">
                 Eligibility:
                 </div>
                 <div class="col-sm-6">
                    <select name="elg" multiple>
                        <option value="CSE">CSE</option>
                        <option value="IT">IT</option>
                        <option value="EC">EC</option>
                        <option value="ME">ME</option>
                    </select>
                 </div>
                <div class ="col-sm-2"></div>
             </div>   
            
                <div class="row">
                 <div class="col-sm-2">
                    
                 </div>
                    <div class="col-sm-2">
                    
                 </div>
                 <div class="col-sm-6">
                   <button class="btn btn-success" type="submit" name="add">Add Event</button>
                 </div>
                  <div class ="col-sm-2"></div>
             </div>    
       </form>
    </center>
  <%@ include file = "footer.jsp" %>