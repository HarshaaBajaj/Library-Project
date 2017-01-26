<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <form method="post" action="registration.jsp">
            <center>
            <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Member id</td>
                        <td><input type="text" name="mid" value="" /></td>
                    </tr>
                    <tr>
                        <td>member name</td>
                        <td><input type="text" name="mname" value="" /></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="text" name="mpassword" value="" /></td>
                    </tr>
                    <tr>
                        <td>branch</td>
                        <td><input type="text" name="branch" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>