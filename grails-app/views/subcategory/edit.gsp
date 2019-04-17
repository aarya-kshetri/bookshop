<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/6/2018
  Time: 8:23 AM
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
    <g:textField class="form-control" name="title" value="${subcat.title}"></g:textField><br/>
    <g:select class="form-control" name="category" from="${cList}" value="${cList as String}" noSelection = "['':'-choose main category-']" />
   <br/> <g:hiddenField name="id" value="${subcat.id}"/><br/>
    <g:submitButton class="btn btn-primary" name="update" value="Update"/>
</g:form>
</div>
</body>
</html>