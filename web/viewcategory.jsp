<%@ page import ="java.sql.*" %>
<%@ include file = "headerstudent.jsp" %>



    <center>
        
        <h2>View Category...</h2>
        
              <% 
                     Class.forName("com.mysql.jdbc.Driver");
                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root", "root");
                       Statement st = con.createStatement();
                        ResultSet rs = null;
                  try{
                      
                        String q = "SELECT * from addcategory";
                        rs = st.executeQuery(q);
                       %>
                                <div class="row">
                 <div class="col-sm-2">
                   
                 </div>
                 <div class="col-sm-8">
                     <table class="table table-bordered">
                         <thead>
                         <tr><th>Category id:</th>
                             <th>Category name:</th></tr>
                         </thead>
                        
                      <%
                        while (rs.next()) {
                        %>
                        <TR>
                        <TD><%=rs.getString(1)%></TD>
                        <TD><%=rs.getString(2)%></TD>
                        </TR>
                        <% }
                           }            
                      catch(Exception ex)
                       {
                       
                        }
                     finally
                      {
                         // close all the connections.
                        rs.close();
                        st.close();
                        con.close();
                    }
                         %>
                     </table>
                 </div>
                 
             <br/>
                     
                 <div class="col-sm-2">
                    
                 
                                </div>
                                </div>
    </center>
       <%@ include file = "footer.jsp" %>
  

       
      





  