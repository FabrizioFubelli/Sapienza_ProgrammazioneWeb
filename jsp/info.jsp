<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: Fabrizio Fubelli
  Date: 9/9/18
  Time: 1:24 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Default Java Server settings</title>
    <style>
        div.example {
            padding: 10px;
        }
        div.example.src {
            background: #dfdfdf;
        }
        div.example.code {
            background: #c3dfaf;
        }
    </style>
</head>
<body>

<h1>Default Java Server settings</h1>

<h3>Session Info:</h3>
<div class="example src">
    session.getId() = &lt;%= session.getId() %><br>
    session.isNew() = &lt;%= session.isNew() %><br>
    session.getMaxInactiveInterval() = &lt;%= session.getMaxInactiveInterval() %> (seconds)<br>
    &lt;% session.setMaxInactiveInterval(7) %><br>
    session.getMaxInactiveInterval() = &lt;%= session.getMaxInactiveInterval() %><br>
</div>
<div class="example code">
    session.getId() = <%= session.getId() %><br>
    ession.isNew() = <%= session.isNew() %><br>
    session.getMaxInactiveInterval() = <%= session.getMaxInactiveInterval() %> (seconds)<br>
    session.setMaxInactiveInterval(7); <% session.setMaxInactiveInterval(7); %><br>
    session.getMaxInactiveInterval() = <%= session.getMaxInactiveInterval() %><br>
</div>
<br>

</body>
</html>
