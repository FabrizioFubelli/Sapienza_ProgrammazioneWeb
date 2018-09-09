<%@ page import="java.util.Objects" %>
<%@ page import="java.util.function.Consumer" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Enumeration" %><%--
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
    session.getId() = &lt;%= session.getId() %><br/>
    session.isNew() = &lt;%= session.isNew() %><br/>
    session.getMaxInactiveInterval() = &lt;%= session.getMaxInactiveInterval() %> (seconds)<br/>
    session.setMaxInactiveInterval(7); &lt;% session.setMaxInactiveInterval(7); %><br/>
    session.setAttribute("Qui", "Rosso"); &lt;% session.setAttribute("Qui", "Rosso");  %><br/>
    session.setAttribute("Quo", "Blu"); &lt;% session.setAttribute("Quo", "Blu");  %><br/>
    session.setAttribute("Qua", "Verde"); &lt;% session.setAttribute("Qua", "Verde");  %><br/>
    <strong>Session attributes:</strong><br/>
    &lt;%<br/>
    &nbsp;Enumeration&lt;String> sessionAttributeNames = session.getAttributeNames();<br/>
    &nbsp;while (sessionAttributeNames.hasMoreElements()) {<br/>
    &nbsp;&nbsp;String key = sessionAttributeNames.nextElement();<br/>
    &nbsp;&nbsp;out.println(key + " => " + session.getAttribute(key) + "&lt;br/>");<br/>
    &nbsp;}<br/>
    %><br>
</div>
<div class="example code">
    session.getId() = <%= session.getId() %><br/>
    session.isNew() = <%= session.isNew() %><br/>
    session.getMaxInactiveInterval() = <%= session.getMaxInactiveInterval() %> (seconds)<br/>
    session.setMaxInactiveInterval(7); <% session.setMaxInactiveInterval(7); %><br/>
    session.setAttribute("Qui", "Rosso"); <% session.setAttribute("Qui", "Rosso"); %><br/>
    session.setAttribute("Quo", "Blu"); <% session.setAttribute("Quo", "Blu"); %><br/>
    session.setAttribute("Qua", "Verde"); <% session.setAttribute("Qua", "Verde"); %><br/>
    <strong>Session attributes:</strong><br/>
    <%
        Enumeration<String> sessionAttributeNames = session.getAttributeNames();
        while (sessionAttributeNames.hasMoreElements()) {
            String key = sessionAttributeNames.nextElement();
            out.println(key + " => " + session.getAttribute(key) + "<br/>");
        }
    %>
</div>
<br/>

</body>
</html>
