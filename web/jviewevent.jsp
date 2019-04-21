<%@ page import ="java.sql.*" %>
<%
    String category_name = request.getParameter("category_name");    
    String eligibility = request.getParameter("eligibility");
   // String user = request.getParameter("user");
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from addcategory where Category_name ='" + category_name + "' or select * from addevent where Eligibility = '"+eligibility+"'");
    if (rs.next()) {
        session.setAttribute("username", rs.getString(1));
        String user=rs.getString(8);
        if(user.equals("admin"))
        {
              response.sendRedirect("header.jsp");
        }
        if(user.equals("student"))
        {
              response.sendRedirect("headerstudent.jsp");
        }      
    }
    else {
        //response.sendRedirect("index.html");
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>