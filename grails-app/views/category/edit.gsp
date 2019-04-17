<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/5/2018
  Time: 9:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="bootstrap.css"/>
    <title></title>
</head>

<body>
<div style="position: relative; margin: auto; margin-bottom: 200px; width: 40%;">
<g:form action="update" method="post">
    <label>Title</label><br/>
    <g:textField class="form-control" name="title" value="${cat.title}"></g:textField><br/>
    <g:hiddenField name="id" value="${cat.id}"/>
    <g:submitButton class="btn btn-primary" name="save" value="Save"/>
</g:form>
</div>
</body>
</html>