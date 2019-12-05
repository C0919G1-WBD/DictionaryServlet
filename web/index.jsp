<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/12/2019
  Time: 8:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html public "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dictionary</title>
  </head>
  <body>
    <h3>Vietnamese Dictionary</h3>
    <form action="/dictionary" method="post">
      <input type="text" name="txtSearch" placeholder="Enter your word">
      <input type="submit" id="submit" value="Search">
    </form>
    <input type="text" value="<%=request.getAttribute("result")%>">
  </body>
</html>
