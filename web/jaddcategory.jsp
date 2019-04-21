<%@ page import ="java.sql.*" %>
<%
    String category_name = request.getParameter("category_name");    
    Class.forName("com.mysql.jdbc.Driver");
    String utype="Student";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into addcategory(category_name) values ('" +category_name + "')");
 /* String query = "Select * from addcategory" ;
   Statement st = con.createStatement();
   ResultSet rs=st.executeQuery(query);*/
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("addevent.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } 
     else {
        response.sendRedirect("header.jsp");
    }
%>