<%@ page import ="java.sql.*" %>
<%
    String mid = request.getParameter("mid");    
    String mname = request.getParameter("mname");
    String mpassword = request.getParameter("mpassword");
    String branch = request.getParameter("branch");
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    Connection con = DriverManager.getConnection("jdbc:odbc:project");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into mem(mid, mname, mpassword, branch) values ('" + mid + "','" + mname + "','" + mpassword + "','" + branch + "')");
    if (i > 0) {
        //session.setAttribute("mid", mid);
        response.sendRedirect("welcome.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        response.sendRedirect("index.jsp");
    }
%>