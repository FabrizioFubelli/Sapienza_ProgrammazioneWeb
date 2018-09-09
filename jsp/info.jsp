<%@ page import="java.util.Objects" %>
<%@ page import="java.util.function.Consumer" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %><%--
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
    &emsp;Enumeration&lt;String> sessionAttributeNames = session.getAttributeNames();<br/>
    &emsp;while (sessionAttributeNames.hasMoreElements()) {<br/>
    &emsp;&emsp;String key = sessionAttributeNames.nextElement();<br/>
    &emsp;&emsp;out.println(key + " => " + session.getAttribute(key) + "&lt;br/>");<br/>
    &emsp;}<br/>
    %><br/>
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


<h3>Cookies Info:</h3>
<div class="example src">
    &lt;%<br>
    &emsp;Cookie[] cookies = request.getCookies();<br/>
    &emsp;for (Cookie cookie : cookies) {<br/>
    &emsp;&emsp;out.println("&lt;strong>"+cookie.getName()+"&lt;/strong>&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getValue() = "+cookie.getValue()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getComment() = "+cookie.getComment()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getDomain() = "+cookie.getDomain()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getMaxAge() = "+cookie.getMaxAge()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getPath() = "+cookie.getPath()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getSecure() = "+cookie.getSecure()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.getVersion() = "+cookie.getVersion()+"&lt;br/>");<br/>
    &emsp;&emsp;out.println("cookie.isHttpOnly() = "+cookie.isHttpOnly()+"&lt;br/>&lt;br/>");<br/>
    &emsp;}<br/>
    %><br/>
</div>
<div class="example code">
    <%
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            out.println("<strong>"+cookie.getName()+"</strong><br/>");
            out.println("cookie.getValue() = "+cookie.getValue()+"<br/>");
            out.println("cookie.getComment() = "+cookie.getComment()+"<br/>");
            out.println("cookie.getDomain() = "+cookie.getDomain()+"<br/>");
            out.println("cookie.getMaxAge() = "+cookie.getMaxAge()+"<br/>");
            out.println("cookie.getPath() = "+cookie.getPath()+"<br/>");
            out.println("cookie.getSecure() = "+cookie.getSecure()+"<br/>");
            out.println("cookie.getVersion() = "+cookie.getVersion()+"<br/>");
            out.println("cookie.isHttpOnly() = "+cookie.isHttpOnly()+"<br/><br/>");
        }
    %>
</div>
<br/>


</body>
</html>
