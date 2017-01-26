<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
        <form method="post" action="book.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Search Book</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Book Id</td>
                        <td><input type="text" name="bid" value="" /></td>
                    </tr>
                    <tr>
                        <td>Book name</td>
                        <td><input type="text" name="bname" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="search" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>

<a href="index.jsp">Logout</a><br>
<a href="dhome.html">Home</a>

  
            </center>
        </form>
    </body>
</html>