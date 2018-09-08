<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns = "http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <title>Using Cookies</title>
</head>
<body>
<form action="<%= response.encodeURL("/servlet/Cookies") %>" method="post">
    <p>Select programming language:</p>
    <p>
        <input type="radio" name="language" title="language" value="C">C<br/>
        <input type="radio" name="language" title="language" value="C++">C++<br/>

        <!-- this radio button checked by default -->
        <input type="radio" checked name="language" title="language" value="Java">Java<br/>
        <input type="radio" name="language" title="language" value="VB6">VB 6<br/>
    </p>
    <p><input type="submit" value="Submit"/></p>
</form>
</body>
</html>