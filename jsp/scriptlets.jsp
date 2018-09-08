<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Scriptlets JSP</title>
</head>
<body bgcolor="white">
<h1>Scriptlets JSP</h1>



<h3>Foreach Example:</h3>
<div style="background: #dfdfdf; padding: 10px;">
&lt;% for (int i = 1; i <= 5; i++) { %><br>
&lt;%= i %>) Ciao Mondo!<br>
&lt;% } %><br>
</div>
<br>
<%
    for (int i = 1; i <= 5; i++)
    {
%>
<%= i %>) Ciao Mondo!<br>
<%
    }
%>


<br>


<h3>Foreach Cookies Example:</h3>
<div style="background: #dfdfdf; padding: 10px;">
&lt;% if (!Objects.isNull(request.getCookies())) {<br>
&lt;% &nbsp; for (Cookie cooky : request.getCookies()) { %><br>
&lt;%= cooky.getName() %><br>
&lt;%= cooky.getValue() %><br>
&lt;% &nbsp; } %><br>
&lt;% } %><br>
</div>
<br>
<% if (!Objects.isNull(request.getCookies())) {
    for (Cookie cooky : request.getCookies()) { %>
<%= "cooky name: "+cooky.getName() %><br>
<%= "cooky value: "+cooky.getValue() %><br>
<br>
<%  } %>
<% } %>


<br>


</body>
</html>
