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
String a=(String)request.getParameter("bid");
                
String b=(String)request.getParameter("bname");      

%>
<%
ResultSet rs=stmt.executeQuery("select * from books where bid='"+a+"'");
while(rs.next())
{
%>
   <html><head>
 <title>library</title>
 
</head
<body>

<main id="main01" >
				<center>				
<h2><font color="red">Selected Book</font></H2>
<h3>
<table border = 1 cellpadding = 7 cellspacing = 7 align = center>
            <tr>
<th>book id:</th><td><%= rs.getString(2)%></td></tr>
<tr><th>book name:</th><td><%= rs.getString(3)%></td></tr>

          </table>
		  <br><br>
</h2><form action="down.html" method="post">

<h1><input type="submit" value="download" name="proceed"></h1>

</form>
<form action="read.html" method="post">
<h1><input type="submit" value="reads" name="proceed"></h1>


</form>

<a href="index.jsp">Logout</a>
<br>
<a href="dhome.html">Home</a>

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