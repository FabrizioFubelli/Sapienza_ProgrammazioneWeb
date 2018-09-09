<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Redirect JSP</title>
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
<h1>Redirect JSP</h1>

<div class="example src">
    <p style="color: red;">1a) \${error}</p>
    <p style="color: red;">1b) &lt;%= request.getAttribute("error") %></p>
    <p style="color: red;">2a) \${undefined}</p>
    <p style="color: red;">2b) &lt;%= request.getAttribute("undefined") %></p>
</div>
<div class="example code">
    <p style="color: red;">1a) ${error}</p>
    <p style="color: red;">1b) <%= request.getAttribute("error") %></p>
    <p style="color: red;">2a) ${undefined}</p>
    <p style="color: red;">2b) <%= request.getAttribute("undefined") %></p>
</div>

</body>
</html>
