<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
        <form method="post" action="book2.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">insert Book id to delete</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Book Id</td>
                        <td><input type="text" name="bid" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="delete" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>

<a href="index1.jsp">Logout</a><br>

<a href="dhome.html">Home</a>
  
            </center>
        </form>
    </body>
</html>