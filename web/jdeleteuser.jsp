<%@ page import ="java.sql.*" %>
<%
    String delen = request.getParameter("delen");    
    String dely = request.getParameter("dely");    
    Class.forName("com.mysql.jdbc.Driver");
    String utype="Student";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("Delete from reg where Enrollment_no = '" + delen + "' or  year = '" + dely + "'");
 /* String query = "Select * from addcategory" ;
   Statement st = con.createStatement();
   ResultSet rs=st.executeQuery(query);*/
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("successfuldeletion.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } 
     else {
        response.sendRedirect("deleteuser.jsp");
    }
%>