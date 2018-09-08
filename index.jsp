<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Sapienza</title>
</head>
<body bgcolor="white">
<h1>Programmazione per il Web</h1>
<h3>html:</h3>
<p>
    <a href="/html/cookies.html"><%= response.encodeURL("/html/cookies.html") %></a>
    <br>
    <a href="/html/redirect.html"><%= response.encodeURL("/html/redirect.html") %></a>
    <br>
</p>
<br>
<h3>jsp:</h3>
<p>
    <a href="/jsp/cookies.jsp"><%= response.encodeURL("/jsp/cookies.jsp") %></a>
    <br>
    <a href="/jsp/scriptlets.jsp"><%= response.encodeURL("/jsp/scriptlets.jsp") %></a>
    <br>
</p>
<br>
<h3>servlet:</h3>
<p>
    <a href="/servlet/Paperino"><%= response.encodeURL("/servlet/Paperino") %></a>
    <br>
    <a href="/servlet/Redirect"><%= response.encodeURL("/servlet/Redirect") %></a>
    <br>
    <a href="/servlet/Cookies"><%= response.encodeURL("/servlet/Cookies") %></a>
    <br>
</p>
<br>
</body>
</html>