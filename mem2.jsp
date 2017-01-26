<%@ page import ="java.sql.*" %>
<%
    String mid = request.getParameter("mid");    
  

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:project");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("delete from registration where mid='" + mid + "'");
    if (i > 0) {
        //session.setAttribute("mid", mid);
        response.sendRedirect("welcome4.jsp");
       // out.print(" Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>