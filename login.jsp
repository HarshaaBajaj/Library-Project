<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.sql.*"%>


<%
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=DriverManager.getConnection("jdbc:odbc:project");
 Statement stmt=conn.createStatement();
   %>

<% 
String a=(String)request.getParameter("mid");
                
String b=(String)request.getParameter("mpassword");      

%>
<%
ResultSet rs=stmt.executeQuery("select * from mem where mid='"+a+"'");
while(rs.next())
{
%>
   <html><head>
 <title>resource management</title>
 
</head
<body>

<main id="main01" >
				<center>				
<h2><font color="red">member record</font></H2>
<h3>
<table border = 1 cellpadding = 7 cellspacing = 7 align = center>
            <tr>
<th>mid:</th><td><%= rs.getString(5)%></td></tr>
<tr><th>mpassword:</th><td><%= rs.getString(6)%></td></tr>
      
          </table>
		  <br><br>
</h2>
<form action="pur.jsp" method="post">
<h1><input type="submit" value="proceed" name="proceed"></h1>
</form>

</center>
</main>
		</body>
	</html>
<%}
stmt.close();
conn.close();
 
		}  //try
		catch(ClassNotFoundException cnf)
		{
		   out.println(cnf);
		}
	catch(Exception e)
	{
	out.println(e);
	}			

	%>