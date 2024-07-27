<%@page import="com.klef.ep.models.User"%>
<%
User user = (User) session.getAttribute("user");
if(user==null)
{
  response.sendRedirect("sessionexpiry.html");
}
%>
<html>
<head>
<title>user Home</title>
</head>
<body bgcolor="lightgrey">
<a href="userhome.jsp">Home</a>&nbsp;&nbsp;&nbsp;
<a href="userprofile.jsp">Profile</a>&nbsp;&nbsp;&nbsp;
<a href="userlogin.jsf">Logout</a>&nbsp;&nbsp;&nbsp;
<br/><br/>
<center>
<h3><u>user Profile</u></h3>
Name:<%=user.getUsername()%><br/>
Email:<%=user.getEmail()%><br/>

</center>
</body>
</html>