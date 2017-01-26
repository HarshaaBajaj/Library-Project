<%@ page import ="java.sql.*" %>
<%
    String bid = request.getParameter("bid");    
  

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:project");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("delete from book where bid='" + bid + "'");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome3.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>