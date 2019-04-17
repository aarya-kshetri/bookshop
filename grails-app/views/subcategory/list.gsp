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
    <title></title>
</head>

<body>
<g:if test="${flash.message}">
    ${flash.message}
</g:if>
<table border="1">
    <tr>
        <th>Title</th>
        <th>Category</th>
        <th colspan="2">Actions</th>
    </tr>
    <g:each in="${subcat}" var="i">
        <tr>
            <td>${i.title}</td>
            <td>${i.category}</td>
            <td><g:link action="edit" id="${i.id}">Edit</g:link></td>
            <td><g:link onclick="return confirm('Are you sure?');" action="delete" id="${i.id}">Delete</g:link></td>
        </tr>
    </g:each>
</table>
</body>
</html>