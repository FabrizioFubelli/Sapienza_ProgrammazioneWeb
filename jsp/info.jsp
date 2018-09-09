<%--
  Created by IntelliJ IDEA.
  User: Fabrizio Fubelli
  Date: 9/9/18
  Time: 1:24 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Enumeration" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Default Java Server settings</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>
<body>

<h1>Default Java Server settings</h1>



<div class="example src">
    <a href="<%= response.encodeURL(request.getServletPath())+"?param1=test" %>"><button><\%= response.encodeURL(request.getServletPath())+"?param1=test" %></button></a>
</div>
<div class="example code">
    <a href="<%= response.encodeURL(request.getServletPath())+"?param1=test" %>"><button><%= response.encodeURL(request.getServletPath())+"?param1=test" %></button></a>
</div>
<br>



<h3>Implicit objects:</h3>
<div class="example src">
    <\%<br>
    &emsp;&emsp;HttpJspPage jspPage = (HttpJspPage) page; %><br/>
    &emsp;&emsp;ServletConfig servletConfig = jspPage.getServletConfig(); %><br/>
    &emsp;&emsp;ServletContext servletContext = servletConfig.getServletContext(); %><br/>
    %><br>
    jspPage.getServletInfo() = <\%= jspPage.getServletInfo() %><br/>
    servletConfig.getServletName() = <\%= servletConfig.getServletName() %><br/>
    <br/><strong>Init Parameters:</strong><br/>
    <\%<br/>
    &emsp;&emsp;Enumeration&lt;String> initParameterNames = servletConfig.getInitParameterNames();<br/>
    &emsp;&emsp;while (initParameterNames.hasMoreElements()) {<br/>
    &emsp;&emsp;&emsp;&emsp;String name = initParameterNames.nextElement();<br/>
    &emsp;&emsp;&emsp;&emsp;out.print(name + " => "+servletConfig.getInitParameter(name)+"&lt;br/>");<br/>
    &emsp;&emsp;}<br/>
    %><br/><br/>
    servletContext.getServerInfo() = <\%= servletContext.getServerInfo() %><br/>
</div>
<div class="example code">
    <%
        HttpJspPage jspPage = (HttpJspPage) page;
        ServletConfig servletConfig = jspPage.getServletConfig();
        ServletContext servletContext = servletConfig.getServletContext();
    %>
    jspPage.getServletInfo() = <%= jspPage.getServletInfo() %><br/>
    servletConfig.getServletName() = <%= servletConfig.getServletName() %><br/>
    <br/><strong>Init Parameters:</strong><br>
    <%
        Enumeration<String> initParameterNames = servletConfig.getInitParameterNames();
        while (initParameterNames.hasMoreElements()) {
            String name = initParameterNames.nextElement();
            out.print(name + " => "+servletConfig.getInitParameter(name)+"<br/>");
        }
    %><br/>
    servletContext.getServerInfo() = <%= servletContext.getServerInfo() %><br/>
</div>
<br/>



<h3>Request Info:</h3>
<div class="example src">
    request.getMethod() = <\%= request.getMethod() %><br/>
    request.getPathInfo() = <\%= request.getPathInfo() %><br/>
    request.getRequestURI() = <\%= request.getRequestURI() %><br/>
    request.getRequestURL().toString() = <\%= request.getRequestURL().toString() %><br/>
    request.getServletPath() = <\%= request.getServletPath() %><br/>
    request.isRequestedSessionIdFromURL() = <\%= request.isRequestedSessionIdFromURL() %><br/>
    request.isRequestedSessionIdFromCookie() = <\%= request.isRequestedSessionIdFromCookie() %><br/>
    request.isRequestedSessionIdValid() = <\%= request.isRequestedSessionIdValid() %><br/>
    request.getAuthType() = <\%= request.getAuthType() %><br/>
    <br/><strong>Request headers:</strong><br/>
    <\%<br/>
    &emsp;Enumeration&lt;String> requestHeaderNames = request.getHeaderNames();<br/>
    &emsp;while (requestHeaderNames.hasMoreElements()) {<br/>
    &emsp;&emsp;String key = requestHeaderNames.nextElement();<br/>
    &emsp;&emsp;out.print(key + " => " + request.getHeader(key) + "&lt;br/>");<br/>
    &emsp;}<br/>
    %><br/>
    <br/><strong>Request parameters:</strong><br/>
    <\%<br/>
    &emsp;Enumeration&lt;String> requestParameterNames = request.getParameterNames();<br/>
    &emsp;while (requestParameterNames.hasMoreElements()) {<br/>
    &emsp;&emsp;String key = requestParameterNames.nextElement();<br/>
    &emsp;&emsp;out.print(key + " => " + request.getParameter(key) + "&lt;br/>");<br/>
    &emsp;}<br/>
    %><br/>
</div>
<div class="example code">
    request.getMethod() = <%= request.getMethod() %><br/>
    request.getPathInfo() = <%= request.getPathInfo() %><br/>
    request.getRequestURI() = <%= request.getRequestURI() %><br/>
    request.getRequestURL().toString() = <%= request.getRequestURL().toString() %><br/>
    request.getServletPath() = <%= request.getServletPath() %><br/>
    request.isRequestedSessionIdFromURL() = <%= request.isRequestedSessionIdFromURL() %><br/>
    request.isRequestedSessionIdFromCookie() = <%= request.isRequestedSessionIdFromCookie() %><br/>
    request.isRequestedSessionIdValid() = <%= request.isRequestedSessionIdValid() %><br/>
    request.getAuthType() = <%= request.getAuthType() %><br/>
    <br/><strong>Request headers:</strong><br/>
    <%
        Enumeration<String> requestHeaderNames = request.getHeaderNames();
        while (requestHeaderNames.hasMoreElements()) {
            String key = requestHeaderNames.nextElement();
            out.print(key + " => " + request.getHeader(key) + "<br/>");
        }
    %>
    <br/><strong>Request parameters:</strong><br/>
    <%
        Enumeration<String> requestParameterNames = request.getParameterNames();
        while (requestParameterNames.hasMoreElements()) {
            String key = requestParameterNames.nextElement();
            out.print(key + " => " + request.getParameter(key) + "<br/>");
        }
    %>
</div>
<br/>



<h3>Response Info:</h3>
<div class="example src">
    response.getStatus() = <\%= response.getStatus() %><br/>
    <br/><strong>Response headers:</strong><br/>
    <\%<br/>
    &emsp;for (String key : response.getHeaderNames()) {<br/>
    &emsp;&emsp;out.print(key + " => " + response.getHeader(key) + "&lt;br/>");<br/>
    &emsp;}<br/>
    %><br/>
</div>
<div class="example code">
    response.getStatus() = <%= response.getStatus() %><br/>
    <br/><strong>Response headers:</strong><br/>
    <%
        for (String key : response.getHeaderNames()) {
            out.print(key + " => " + response.getHeader(key) + "<br/>");
        }
    %>
</div>
<br/>



<h3>Cookies Info:</h3>
<div class="example src">
    <\%<br/>
    &emsp;Cookie[] cookies = request.getCookies();<br/>
    &emsp;if (cookie != null) {<br/>
    &emsp;&emsp;for (Cookie cookie : cookies) {<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getName() = "+<strong>cookie.getName()</strong>+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getValue() = "+cookie.getValue()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getComment() = "+cookie.getComment()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getDomain() = "+cookie.getDomain()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getMaxAge() = "+cookie.getMaxAge()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getPath() = "+cookie.getPath()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getSecure() = "+cookie.getSecure()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.getVersion() = "+cookie.getVersion()+"&lt;br/>");<br/>
    &emsp;&emsp;&emsp;out.print("cookie.isHttpOnly() = "+cookie.isHttpOnly()+"&lt;br/>&lt;br/>");<br/>
    &emsp;&emsp;}<br/>
    &emsp;}<br/>
    %><br/>
</div>
<div class="example code">
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                out.print("cookie.getName() = <strong>" + cookie.getName() + "</strong><br/>");
                out.print("cookie.getValue() = " + cookie.getValue() + "<br/>");
                out.print("cookie.getComment() = " + cookie.getComment() + "<br/>");
                out.print("cookie.getDomain() = " + cookie.getDomain() + "<br/>");
                out.print("cookie.getMaxAge() = " + cookie.getMaxAge() + "<br/>");
                out.print("cookie.getPath() = " + cookie.getPath() + "<br/>");
                out.print("cookie.getSecure() = " + cookie.getSecure() + "<br/>");
                out.print("cookie.getVersion() = " + cookie.getVersion() + "<br/>");
                out.print("cookie.isHttpOnly() = " + cookie.isHttpOnly() + "<br/><br/>");
            }
        }
    %>
</div>
<br/>



<h3>Session Info:</h3>
<div class="example src">
    session.getId() = <\%= session.getId() %><br/>
    session.isNew() = <\%= session.isNew() %><br/>
    session.getMaxInactiveInterval() = <\%= session.getMaxInactiveInterval() %> // This session expire in <%= session.getMaxInactiveInterval() %> seconds of inactivity<br/>
    session.setMaxInactiveInterval(7); <\% session.setMaxInactiveInterval(7); %> // This session will expire in 7 seconds of inactivity<br/>
    <br/><strong>Get session attributes:</strong><br/>
    <\%<br/>
    &emsp;Enumeration&lt;String> sessionAttributeNames = session.getAttributeNames();<br/>
    &emsp;while (sessionAttributeNames.hasMoreElements()) {<br/>
    &emsp;&emsp;String key = sessionAttributeNames.nextElement();<br/>
    &emsp;&emsp;out.print(key + " => " + session.getAttribute(key) + "&lt;br/>");<br/>
    &emsp;}<br/>
    %><br/>
    <br/><strong>Set session attributes:</strong><br/>
    session.setAttribute("Qui", "Rosso"); <\% session.setAttribute("Qui", "Rosso");  %><br/>
    session.setAttribute("Quo", "Blu"); <\% session.setAttribute("Quo", "Blu");  %><br/>
    session.setAttribute("Qua", "Verde"); <\% session.setAttribute("Qua", "Verde");  %><br/>
</div>
<div class="example code">
    session.getId() = <%= session.getId() %><br/>
    session.isNew() = <%= session.isNew() %><br/>
    session.getMaxInactiveInterval() = <%= session.getMaxInactiveInterval() %> // This session expire in <%= session.getMaxInactiveInterval() %> seconds of inactivity<br/>
    session.setMaxInactiveInterval(7); <% session.setMaxInactiveInterval(7); %> // This session will expire in 7 seconds of inactivity<br/>
    <br/><strong>Get session attributes:</strong><br/>
    <%
        Enumeration<String> sessionAttributeNames = session.getAttributeNames();
        while (sessionAttributeNames.hasMoreElements()) {
            String key = sessionAttributeNames.nextElement();
            out.print(key + " => " + session.getAttribute(key) + "<br/>");
        }
    %>
    <br/><strong>Set session attributes:</strong><br/>
    session.setAttribute("Qui", "Rosso"); <% session.setAttribute("Qui", "Rosso"); %><br/>
    session.setAttribute("Quo", "Blu"); <% session.setAttribute("Quo", "Blu"); %><br/>
    session.setAttribute("Qua", "Verde"); <% session.setAttribute("Qua", "Verde"); %><br/>
</div>
<br/>


</body>
</html>
