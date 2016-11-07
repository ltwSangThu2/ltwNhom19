<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page  import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body> 
<jsp:useBean id="db" scope="request" class="servlet.loginlogout.LoginBean" >
  <jsp:setProperty name="db" property="userName" value='<%=request.getParameter("userName")%>'/>
  <jsp:setProperty name="db" property="password" value='<%=request.getParameter("password")%>'/>
 </jsp:useBean>
<jsp:forward page="login">
  <jsp:param name="username" value="<%=db.getUserName()%>" />
  <jsp:param name="password" value="<%=db.getPassword()%>" />
</jsp:forward> 
</body>
</html>