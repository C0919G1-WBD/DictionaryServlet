<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 5/12/2019
  Time: 8:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Từ điển</title>
  </head>
  <body>
    <h3>Vietnamese Dictionary</h3>
    <form action="/dictionary" method="post">
      <input type="text" name="txtSearch" placeholder="Enter your word">
      <input type="submit" id="submit" value="Search">
    </form>
    <input type="text" value="<%=request.getAttribute("result")%>" placeholder="Kết quả">
  </body>
</html>
