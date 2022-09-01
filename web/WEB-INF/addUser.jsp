<%@ page import="model.Event" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 01.09.2022
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<%
    List<Event> events = (List<Event>) request.getAttribute("events");
%>
Please input user's
<form action="/users/add" method="post">
<input type="text" name="name" placeholder="name">
<input type="text" name="surname" placeholder="surname">
<input type="text" name="email" placeholder="email">
<br>
<select name="eventId">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
</select>
<input type="submit" value="Add">
</form>
</body>
</html>
