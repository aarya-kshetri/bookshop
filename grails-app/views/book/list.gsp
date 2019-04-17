<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/5/2018
  Time: 9:01 PM
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
        <th>ISBN</th>
        <th>Title</th>
        <th>Sub-category</th>
        <th>Author</th>
        <th>Publisher</th>
        <th>Stock</th>
        <th>Publication Date</th>
        <th>Description</th>
        <th>Image</th>
        <th>Price</th>
        <th colspan="2">Actions</th>
    </tr>
    <g:each in="${books}" var="i">
        <tr>
            <td>${i.isbn}</td>
            <td>${i.title}</td>
            <td>${i.subcategory}</td>
            <td>${i.author}</td>
            <td>${i.publisher}</td>
            <td>${i.stock}</td>
            <td>${i.publicationDate}</td>
            <td>${i.description}</td>
            <td><img src="${application.contextPath}/static/assets/images/${i.image}" width="250px" height="250px"/></td>
            <td>${i.price}</td>
            <td><g:link action="edit" id="${i.id}">Edit</g:link></td>
            <td><g:link onclick="return confirm('Are you sure?');" action="delete" id="${i.id}">Delete</g:link></td>
        </tr>
    </g:each>
</table>
</body>
</html>