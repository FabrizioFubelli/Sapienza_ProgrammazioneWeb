<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Redirect JSP</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>
<body bgcolor="white">
<h1>Redirect JSP</h1>

<div class="example src">
    <p>1a) \${error} = <span style="color: red;">\${error}</span></p>
    <p>1b) request.getAttribute("error") = <span style="color: red;"><\%= request.getAttribute("error") %></span>
    <p>2a) \${undefined_attribute} = <span style="color: red;">\${undefined_attribute}</span></p>
    <p>2b) request.getAttribute("undefined_attribute") = <span style="color: red;"><\%= request.getAttribute("undefined_attribute") %></span></p>
</div>
<div class="example code">
    <p>1a) \${error} = <span style="color: red;">${error}</span></p>
    <p>1b) request.getAttribute("error") = <span style="color: red;"><%= request.getAttribute("error") %></span></p>
    <p>2a) \${undefined_attribute} = <span style="color: red;">${undefined_attribute}</span></p>
    <p>2b) request.getAttribute("undefined_attribute") = <span style="color: red;"><%= request.getAttribute("undefined_attribute") %></span></p>
</div>

</body>
</html>
