<%@ page import ="java.sql.*" %>
<%@ include file = "headerstudent.jsp" %>


    
     
        
              <% 
                     Class.forName("com.mysql.jdbc.Driver");
                       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration","root", "root");
                       Statement st = con.createStatement();
                        ResultSet rs = null;
                  try{
                      
                        String q = "SELECT * from addevent";
                        rs = st.executeQuery(q);
                       %>
                       <div class="row">
                 <div class="col-sm-2">   
                 </div>
                           <div class ="col-sm-8">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                        <th>Category Name</th>
                        <th>Event id</th>   
                        <th>Event name</th>
                        <th>Description</th>
                        <th>Duration></th>
                        <th>Eligibility</th>
                        </tr>
                        </thead>
                           
                       <%
                        while (rs.next()) {
                        %>
                        <TR>
                        <TD><%=rs.getString(1)%></TD>
                        <TD><%=rs.getString(2)%></TD>
                        <TD><%=rs.getString(3)%></TD>
                        <TD><%=rs.getString(4)%></TD>
                        <TD><%=rs.getString(4)%></TD>
                        <TD><%=rs.getString(4)%></TD>
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
         <div class="col-sm-2">   
                 </div>
                       </div>
                
    
<%@ include file = "footer.jsp" %>
  
