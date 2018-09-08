<%@ page import="java.util.Objects" %>
<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Scriptlets JSP</title>
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
<body bgcolor="white">
<h1>Scriptlets JSP</h1>



<h3>Foreach Example:</h3>
<div class="example src">
    &lt;% for (int i = 1; i <= 5; i++) { %><br>
    &lt;%= i %>) Ciao Mondo!<br>
    &lt;% } %><br>
</div>
<div class="example code">
<%
    for (int i = 1; i <= 5; i++)
    {
%>
<%= i %>) Ciao Mondo!<br>
<%
    }
%>
</div>



<h3>Foreach Cookies Example:</h3>
<div class="example src">
    &lt;% if (!Objects.isNull(request.getCookies())) {<br>
    &emsp;&emsp; for (Cookie cooky : request.getCookies()) { %><br>
    &lt;%= &ensp; "cooky name: "+cooky.getName() %><br>
    &lt;%= &ensp; "cooky value: "+cooky.getValue() %><br>
    &lt;% &nbsp; } %><br>
    &lt;% } %><br>
</div>
<div class="example code">
<% if (!Objects.isNull(request.getCookies())) {
    for (Cookie cooky : request.getCookies()) { %>
<%= "cooky name: "+cooky.getName() %><br>
<%= "cooky value: "+cooky.getValue() %><br>
<%  } %>
<% } %>
</div>


<br>


<h3>Foreach Session Example:</h3>
<div class="example src">
    &lt;% if (!Objects.isNull(session)) {<br>
    &emsp;&emsp; Enumeration&lt;String> sessionAttributeNames = session.getAttributeNames();<br>
    &emsp;&emsp; while (sessionAttributeNames.hasMoreElements()) {<br>
    &emsp;&emsp;&emsp; String attrName = sessionAttributeNames.nextElement(); %><br>
    &lt;%= &nbsp;&nbsp;&nbsp; "session-attribute name: "+attrName %><br>
    &lt;%= &nbsp;&nbsp;&nbsp; "session-attribute value: "+session.getAttribute(attrName) %><br>
    &lt;% &nbsp; } %><br>
    &lt;% } %><br>
</div>
<div class="example code">
<% if (!Objects.isNull(session)) {
    Enumeration<String> sessionAttributeNames = session.getAttributeNames();
    while (sessionAttributeNames.hasMoreElements()) {
        String attrName = sessionAttributeNames.nextElement(); %>
<%=     "session-attribute name: "+attrName %><br>
<%=     "session-attribute value: "+session.getAttribute(attrName) %><br>
<%  } %>
<% } %>
</div>

<br>


</body>
</html>
