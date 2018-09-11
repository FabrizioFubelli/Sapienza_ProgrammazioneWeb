<%--
  Created by IntelliJ IDEA.
  User: Fabrizio Fubelli
  Date: 9/11/18
  Time: 2:22 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Tags</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>
<body>
<h1>Tags</h1>


<h3>Tag Example:</h3>
<div class="example src">
    <\%@ taglib uri="/WEB-INF/tlds/example.tld" prefix="example_tld" %><br/><br/>
    <strong>Message from example tag:</strong><br/>
    &lt;example_tld:example/><br/>
</div>
<div class="example code">
    <%@ taglib uri="/WEB-INF/tlds/example.tld" prefix="example_tld" %>
    <strong>Message from example tag:</strong><br/>
    <example_tld:example/><br/>
</div>
<br/>



<h3>Tag Attribute:</h3>
<div class="example src">
    <strong>Message from example tag:</strong><br/>
    &lt;example_tld:attribute qui="red"/><br/>
</div>
<div class="example code">
    <strong>Message from example tag:</strong><br/>
    <example_tld:attribute qui="red" quo="blue" qua="green"/><br/>
</div>
<br/>




</body>
</html>
