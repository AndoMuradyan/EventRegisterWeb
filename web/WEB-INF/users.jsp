<%@ page import="model.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 01.09.2022
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users Page</title>
</head>
<body>
<%
    List<User> users = (List<User>) request.getAttribute("users");
%>
<table border="1px">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>event id</th>
    </tr>
    <% for (User user : users) {
    %>
    <tr>
        <td><%=user.getName()%>
        <td><%=user.getSurname()%>
        <td><%=user.getEmail()%>
        <td><%=user.getEvent()%>
    </tr>
    <%}
    %>
</table>
</body>
</html>
