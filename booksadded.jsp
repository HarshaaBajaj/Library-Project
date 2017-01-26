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
ResultSet rs=stmt.executeQuery("select * from books");
while(rs.next())
{
%>
   <html><head>
 <title>books</title>
 
</head
<body>

<main id="main01" >
				<center>				
<h2><font color="red">book  record</font></H2>
<h3>
<table border=2 >
<tr>
<th>bid</th>
<th>bname</th>
</tr>
<% while (rs.next()){%>
<tr>           
<td><%= rs.getString(2)%></td>
<td><%= rs.getString(3)%></td>

</tr>
<%}%>
</table>

      
		  <br><br>
</h2>

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