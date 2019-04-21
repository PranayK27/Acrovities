<%@ page import ="java.sql.*" %>
<%
    String eno = request.getParameter("eno");    
    String pwd = request.getParameter("pwd");
   // String user = request.getParameter("user");
     
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration",
            "root", "root");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from reg where Enrollment_no ='" + eno + "' and Password ='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("username", rs.getString(1));
        String user=rs.getString(8);
        if(user.equals("admin"))
        {
              response.sendRedirect("nheader.jsp");
        }
        if(user.equals("student"))
        {
              response.sendRedirect("headerstudent.jsp");
        }      
    }
    else {
        //response.sendRedirect("index.jsp");
        out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
%>