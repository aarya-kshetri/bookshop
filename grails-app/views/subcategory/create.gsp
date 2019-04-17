<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/5/2018
  Time: 9:33 PM
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
<g:form action="save" method="post">
    <label>Title</label><br/>
    <g:textField class="form-control" name="title"></g:textField><br/>
    <g:select class="form-control" name="category" from="${cList}" value="${cList as String}" noSelection = "['':'-choose main category-']" /><br/>
    <br/>
    <g:submitButton class="btn btn-primary" name="save" value="Save"/>
</g:form>
</div>
</body>
</html>