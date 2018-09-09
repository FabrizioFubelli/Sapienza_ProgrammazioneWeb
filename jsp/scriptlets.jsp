<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Objects, java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Scriptlets JSP</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>
<body bgcolor="white">
<h1>Scriptlets JSP</h1>



<h3>Actions:</h3>
<div class="example src">
    &lt;% scriptlet source %><br/>
    &lt;%= expression %><br/>
    &lt;%! declatration %><br/>
    &lt;%-- comment %><br/>
</div>
<br/>



<h3>Foreach Example:</h3>
<div class="example src">
    &lt;% for (int i = 1; i <= 5; i++) { %><br/>
    &lt;%= i %>) Ciao Mondo!<br/>
    &lt;% } %><br/>
</div>
<div class="example code">
<% for (int i = 1; i <= 5; i++) { %>
<%= i %>) Ciao Mondo!<br/>
<% } %>
</div>
<br/>


<h3>Foreach Cookies Example:</h3>
<div class="example src">
    &lt;% Cookie cookies[] = request.getCookies(); <br/>
    &emsp;&ensp; if (!Objects.isNull(cookies)) {<br/>
    &emsp;&emsp; for (Cookie cooky : cookies) { %><br/>
    &lt;%= &ensp; "cooky name: "+cooky.getName() %><br/>
    &lt;%= &ensp; "cooky value: "+cooky.getValue() %><br/>
    &lt;% &nbsp; } %><br/>
    &lt;% } %><br/>
</div>
<div class="example code">
<% Cookie cookies[] = request.getCookies();
   if (!Objects.isNull(cookies)) {
    for (Cookie cooky : cookies) { %>
<%= "cooky name: "+cooky.getName() %><br/>
<%= "cooky value: "+cooky.getValue() %><br/>
<%  } %>
<% } %>
</div>
<br/>


<h3>Foreach Session Example:</h3>
<div class="example src">
    &lt;% if (!Objects.isNull(session)) {<br/>
    &emsp;&emsp; Enumeration&lt;String> sessionAttributeNames = session.getAttributeNames();<br/>
    &emsp;&emsp; while (sessionAttributeNames.hasMoreElements()) {<br/>
    &emsp;&emsp;&emsp; String attrName = sessionAttributeNames.nextElement(); %><br/>
    &lt;%= &nbsp;&nbsp;&nbsp; "session-attribute name: "+attrName %><br/>
    &lt;%= &nbsp;&nbsp;&nbsp; "session-attribute value: "+session.getAttribute(attrName) %><br/>
    &lt;% &nbsp; } %><br/>
    &lt;% } %><br/>
</div>
<div class="example code">
<% if (!Objects.isNull(session)) {
    Enumeration<String> sessionAttributeNames = session.getAttributeNames();
    while (sessionAttributeNames.hasMoreElements()) {
        String attrName = sessionAttributeNames.nextElement(); %>
<%=     "session-attribute name: "+attrName %><br/>
<%=     "session-attribute value: "+session.getAttribute(attrName) %><br/>
<%  } %>
<% } %>
</div>
<br/>


</body>
</html>
