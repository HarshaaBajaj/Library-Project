<%@ page import ="java.sql.*" %>
<%
    String bname = request.getParameter("bname");    
    String aname = request.getParameter("author");

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:project");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into book(bname, aname) values ('" + bname + "','" + aname + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("welcome2.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>