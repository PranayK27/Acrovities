<%@ page import ="java.sql.*" %>
<%
    String eno = request.getParameter("eno");    
    String eid = request.getParameter("eid");
    String pwd = request.getParameter("pwd");
    String mno = request.getParameter("mob");
    String course = request.getParameter("course");
    String year = request.getParameter("year");
    String clg = request.getParameter("clg");
    Class.forName("com.mysql.jdbc.Driver");
    String utype="Student";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Registration",
            "root", "root");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into reg(Enrollment_no, Email_id, Password, Mob_no, Course, Year, Clg_name) values ('" + eno+ "','" +eid + "','" + pwd+ "','" + mno+ "','" + course + "','" + year + "','" + clg + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome.jsp");
        out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } 
     else {
        response.sendRedirect("index.jsp");
    }
%>