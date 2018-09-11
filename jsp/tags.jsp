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
    <example_tld:example><br/>(this is the tag body)</example_tld:example><br/>
</div>
<br/>



<h3>Tag Attribute:</h3>
<div class="example src">
    <strong>Message from example tag:</strong><br/>
    &lt;example_tld:attribute qui="red" quo="blue" qua="green"/><br/>
</div>
<div class="example code">
    <strong>Message from example tag:</strong><br/>
    <example_tld:attribute qui="red" quo="blue" qua="green"/>
</div>
<br/>



<h3>Tag Parameter:</h3>
<div class="example src">
    <form action="tags.jsp" method="get">
        <table>
            <tr>
                <td>Nome:</td>
                <td>
                    <input type="text" disabled minlength=1 size=35 name="firstName" title="name" required
                           value="&lt;example_tld:property property='firstName'/>"/>
                </td>
            </tr>
            <tr>
                <td>Cognome:</td>
                <td>
                    <input type="text" disabled minlength=1 size=35 name="lastName" title="surname" required
                           value="&lt;example_tld:property property='lastName'/>"/>
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <input type="email" disabled size=35 name="emailAddress" title="email" required
                           value="&lt;example_tld:property property='emailAddress'/>"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="align-items: center; text-align: center; padding-top: 20px;">
                    <input type="submit" title="submit" value="submit" disabled/>
                </td>
            </tr>
        </table>
    </form>
</div>
<div class="example code">
    <form action="tags.jsp" method="get">
        <table>
            <tr>
                <td>Nome:</td>
                <td>
                    <input type="text" minlength=1 size=35 name="firstName" title="name" required
                           value="<example_tld:property property='firstName'/>"/>
                </td>
            </tr>
            <tr>
                <td>Cognome:</td>
                <td>
                    <input type="text" minlength=1 size=35 name="lastName" title="surname" required
                           value="<example_tld:property property='lastName'/>"/>
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <input type="email" size=35 name="emailAddress" title="email" required
                           value="<example_tld:property property='emailAddress'/>"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="align-items: center; text-align: center; padding-top: 20px;">
                    <input type="submit" title="submit" value="submit"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<br/>




</body>
</html>
