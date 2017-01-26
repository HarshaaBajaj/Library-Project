<%
session.setAttribute("mid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>