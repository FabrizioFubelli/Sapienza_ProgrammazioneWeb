<%--
  Created by IntelliJ IDEA.
  User: Fabrizio Fubelli
  Date: 9/9/18
  Time: 7:08 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Directives JSP</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>
<body bgcolor="white">
<h1>JSP Directives</h1>



<h3>Directive Examples:</h3>
<div class="example src">
    <div>
    &lt;%@ page language="java" import= "..." %><br/>
    &lt;%@ include file="relativeURLspec" %><br/>
    </div>
</div>
<div class="example code">
    <div>
    <% for (int i = 1; i <= 5; i++) { %>
    <%= i %>) Ciao Mondo!<br/>
    <% } %>
    </div>
</div>
<br/>



</body>
</html>
