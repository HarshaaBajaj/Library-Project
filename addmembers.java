import java.sql.*;
import javax.servlet.*;

public class addmembers extends GenericServlet
{
                  Connection con;

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
              Statement st = con.createStatement();
              String s1 = req.getParameter("mid");
              String s2 = req.getParameter("mname");
              String s3 = req.getParameter("mpassword");
              String s4 = req.getParameter("branch");
              ServletOutputStream sos = res.getOutputStream();
              int i = st.executeUpdate("insert into members values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
              if(i>0)
               sos.println("data is successfully added");
              else
               sos.println("data is not added");
             }
              catch(Exception e){e.printStackTrace();}
           }
}

               

