<%@ page import ="java.sql.*" %>
<%
    String cat_name = request.getParameter("category_name");    
    String event_name = request.getParameter("event_name");    
    String description = request.getParameter("description");    
    String duration = request.getParameter("duration");    
    //String eligibility = request.getParameter("eligibility");    
    String   []a=request.getParameterValues("elg");

   String str="";
   if (a != null) 
   {
      for (int i = 0; i < a.length; i++) 
      {
      str=str+a[i]+" ";
       //  out.println ("<b>"+a[i]+"<b>");
      }
   }   

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test",
            "root", "root");
    Statement st = con.createStatement();
     int i = st.executeUpdate("insert into addevent(cat_name, Event_name, Description, Duration, Eligibility) values ('"+cat_name+"','" +event_name + "','" + description+ "','" + duration+ "','" +str+ "')");
 
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("header.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } 
     else {
        response.sendRedirect("header.jsp");
    }
%>