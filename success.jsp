<%
    if ((session.getAttribute("mid") == null) || (session.getAttribute("mid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("mid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>