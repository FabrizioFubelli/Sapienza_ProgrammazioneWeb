<%--
  Created by IntelliJ IDEA.
  User: Fabrizio Fubelli
  Date: 9/10/18
  Time: 12:49 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forward JSP</title>
    <style type = "text/css">
        .big {
            font-family: tahoma, helvetica, arial, sans-serif;
            font-weight: bold;
            font-size: 2em;
        }
    </style>
</head>
<body>
<p class = "big">
    Hello <%= request.getParameter( "firstName" ) %>, <br />
    Your request was received <br /> and forwarded at
</p>
<table style = "border: 6px outset;">
    <tr>
        <td style = "background-color: black;">
            <p class = "big" style = "color: cyan;">
                <%= request.getParameter( "date" ) %>
            </p>
        </td>
    </tr>
</table>
</body>
</html>
