<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Redirect a Request to Another Site</title>
    <link rel="stylesheet" type="text/css" href="../static/css/custom.css"/>
</head>

<body>
<p>Click a link to be redirected to the appropriate page</p>
<p>
    <a href="/servlet/Redirect?page=botanica">www.botanica.science</a>
</p>
<p>
    <a href="/servlet/Redirect?page=fabriserver">www.fabriserver.party</a>
</p>
<p>
    <a href="/servlet/Redirect?page=oleificio">www.oleificiotulipano.com</a>
</p>

<hr/>

<p>
    <a href="<%= response.encodeURL("/servlet/Redirect")+"?page=invalid" %>">invalid.page</a>
</p>
</body>
</html>
