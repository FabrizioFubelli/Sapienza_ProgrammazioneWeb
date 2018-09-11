<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Sapienza</title>
</head>
<body bgcolor="white">
<h1>Programmazione per il Web</h1>


<h3>jsp:</h3>
<p>
    <a href="<%= response.encodeURL("/jsp/info.jsp?param1=test") %>">/jsp/info.jsp</a>
    <br>
    <a href="<%= response.encodeURL("/jsp/cookies.jsp") %>">/jsp/cookies.jsp</a>
    <br>
    <a href="<%= response.encodeURL("/jsp/scriptlets.jsp?qui=red") %>">/jsp/scriptlets.jsp</a>
    <br>
    <a href="<%= response.encodeURL("/jsp/redirect_1.jsp") %>">/jsp/redirect_1.jsp</a>
    <br>
    <a href="<%= response.encodeURL("/jsp/tags.jsp") %>">/jsp/tags.jsp</a>
    <br>
</p>
<br>

<h3>servlet:</h3>
<p>
    <a href="<%= response.encodeURL("/servlet/Paperino") %>">/servlet/Paperino</a>
    <br>
    <a href="<%= response.encodeURL("/servlet/Redirect") %>">/servlet/Redirect</a>
    <br>
</p>
<br>

</body>
</html>