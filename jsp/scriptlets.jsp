<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.function.BiConsumer" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Scriptlets JSP</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>
<body bgcolor="white">
<h1>Scriptlets JSP</h1>



<h3>Directives:</h3>
<div class="example src">
    <div>
        <\%@ page language="java" import= "..." %><br/>
        <\%@ include file="relativeURLspec" %><br/>
    </div>
</div>
<br/>



<h3>Scriplet:</h3>
<div class="example src">
    <\% scriptlet source %><br/>
    <\%= expression %><br/>
    <\%! declatration %><br/>
    <\%-- comment --%><br/>
</div>
<br/>



<h3>Standard action (<i>jsp:include</i>):</h3>
<div class="example src">
    &lt;jsp:include file="<a href="scriptlets/include.jsp">scriptlets/include.jsp</a>">%><br/>
    &lt;jsp:include file="<a href="../html/scriptlets/include.html">../html/scriptlets/include.html</a>">%><br/>
</div>
<div class="example include code">
    <jsp:include page="scriptlets/include.jsp"/><br/>
</div>
<div class="example include code">
    <jsp:include page="../html/scriptlets/include.html"/><br/>
</div>
<br/>



<h3>Standard action (<i>jsp:forward</i>):</h3>
<div class="example src">
    <\%<br/>
    &emsp;String name = request.getParameter( "firstName" );<br/>
    &emsp;if ( name != null ) {<br/>
    %><br/>
    &emsp;&emsp;&lt;jsp:forward page="<a href="scriptlets/forward.jsp">scriptlets/forward.jsp</a>"><br/>
    &emsp;&emsp;&emsp;&lt;jsp:param name="date" value="<\%= new java.util.Date() %>" /><br/>
    &emsp;&emsp;&lt;jsp:forward><br/>
    <\%<br/>
    } else {<br/>
    %><br/>
    &emsp;&emsp;&lt;form action = "scriptlets.jsp" method = "get"><br/>
    &emsp;&emsp;&emsp;&lt;p>Type your first name and press Submit&lt;/p><br/>
    &emsp;&emsp;&emsp;&lt;p><br/>
    &emsp;&emsp;&emsp;&emsp;&lt;input type = "text" name = "firstName" title="firstName" /><br/>
    &emsp;&emsp;&emsp;&emsp;&lt;input type = "submit" value = "Submit" /><br/>
    &emsp;&emsp;&emsp;&lt;/p><br/>
    &emsp;&emsp;&lt;/form><br/>
    <\%<br/>
        }<br/>
    %><br/>
</div>
<div class="example code">
    <%
        String name = request.getParameter( "firstName" );
        if ( name != null ) {
    %>
    <jsp:forward page="scriptlets/forward.jsp">
        <jsp:param name="date" value="<%= new java.util.Date() %>"/>
    </jsp:forward>
    <%
    } else {
    %>
    <form action = "scriptlets.jsp" method = "get">
        <p>Type your first name and press Submit</p>
        <p>
            <input type = "text" name = "firstName" title="firstName" />
            <input type = "submit" value = "Submit" />
        </p>
    </form>
    <%
        }
    %>
</div>
<br/>



<h3>Standard action (<i>jsp:useBean</i>):</h3>
<div class="example src">
    &lt;jsp:useBean id="nipotino" class="beans.NipotinoBean" scope="application"/><br/>
</div>
<div class="example code">
    <jsp:useBean id="nipotino" scope="application" class="beans.NipotinoBean" /><br/>

    <%
        Enumeration<String> parameterNames = request.getParameterNames();
        List<String> acceptedParams = Arrays.asList("qui", "quo", "qua");
        while (parameterNames.hasMoreElements()) {
            String key = parameterNames.nextElement();
            if (acceptedParams.contains(key)) {
    %>
                <jsp:setProperty name="nipotino" property="name" value="<%= key %>"/> <!-- name="id bean" -->
                <jsp:setProperty name="nipotino" property="color" value="<%= request.getParameter(key) %>"/>
    <%
            }
        }
    %>

    <jsp:getProperty name="nipotino" property="name"/> => <jsp:getProperty name="nipotino" property="color"/>
</div>
<br/>



<h3>Custom tag:</h3>
<div class="example src">
    &lt;tagPrefix:tagName attribute="value">body&lt;/tagPrefix:tagName>
</div>
<br/>



<h3>Declatration Example:</h3>
<div class="example src">
    <\% int counter=0; %><br/>
    <\% counter++; %><br/>
    counter = <\%= counter %>.<br>
    <\%<strong>!</strong> int <strong>counter</strong>=0; %><br/>
    <\% counter++; %><br/>
    counter = <\%= counter %>.<br>
    <\% <strong>this.counter</strong>++; %><br/>
    <strong>this.counter</strong> = <\%= this.counter %>.
</div>
<div class="example code">
    <% int counter=0; %>
    <% counter++; %>
    counter = <%= counter %>.<br>
    <%! private int counter=0; %>
    <% counter++; %>
    counter = <%= counter %>.<br>
    <% this.counter++; %>
    <strong>this.counter</strong> = <%= this.counter %>.
</div>
<br/>



<h3>Foreach Example:</h3>
<div class="example src">
    <\% for (int i = 1; i <= 5; i++) { %><br/>
    <\%= i %>) Ciao Mondo!<br/>
    <\% } %><br/>
</div>
<div class="example code">
    <% for (int i = 1; i <= 5; i++) { %>
    <%= i %>) Ciao Mondo!<br/>
    <% } %>
</div>
<br/>



<h3>Foreach Cookies Example:</h3>
<div class="example src">
    <\% Cookie cookies[] = request.getCookies(); <br/>
    &emsp;&ensp; if (!Objects.isNull(cookies)) {<br/>
    &emsp;&emsp; for (Cookie cooky : cookies) { %><br/>
    <\%= &ensp; "cooky name: "+cooky.getName() %><br/>
    <\%= &ensp; "cooky value: "+cooky.getValue() %><br/>
    <\% &nbsp; } %><br/>
    <\% } %><br/>
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
    <\% if (!Objects.isNull(session)) {<br/>
    &emsp;&emsp; Enumeration&lt;String> sessionAttributeNames = session.getAttributeNames();<br/>
    &emsp;&emsp; while (sessionAttributeNames.hasMoreElements()) {<br/>
    &emsp;&emsp;&emsp; String attrName = sessionAttributeNames.nextElement(); %><br/>
    <\%= &nbsp;&nbsp;&nbsp; attrName + " => " + session.getAttribute(attrName) %><br/>
    <\% &nbsp; } %><br/>
    <\% } %><br/>
</div>
<div class="example code">
    <% if (!Objects.isNull(session)) {
        Enumeration<String> sessionAttributeNames = session.getAttributeNames();
        while (sessionAttributeNames.hasMoreElements()) {
            String attrName = sessionAttributeNames.nextElement(); %>
    <%=     attrName + " => "+session.getAttribute(attrName) %><br/>
    <%  } %>
    <% } %>
</div>
<br/>



</body>
</html>
