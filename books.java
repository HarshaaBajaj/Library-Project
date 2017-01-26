import javax.servlet.*;
import java.sql.*;

public class books extends GenericServlet
{
                 Connection con;
                 ResultSet rs;
                 Statement st ;

            public void init(ServletConfig sc)
            {
             try
             {
              super.init(sc);
              Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              con = DriverManager.getConnection("jdbc:odbc:project");
             }
             catch(Exception e){e.printStackTrace();}
            }

            public void service(ServletRequest req,ServletResponse res)
            {
             try
             {
              st=con.createStatement();
              rs = st.executeQuery("select * from books");
              ServletOutputStream sos = res.getOutputStream();
              sos.println("Currently existing books are");
              if(rs.next())
               sos.println("<html><head></head><body bgcolor=seagreen><table border=2><tr><th>Book Id</th><th>Book name</th><th>AUTHOR</th><th>Availability</th><th>Content</th></tr>");
              while(rs.next())
              {
               sos.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
              }
              sos.println("</table></body></html>");
              st.close();
              rs.close();
             }
             catch(Exception ex){ex.printStackTrace();}
            }
}

             


