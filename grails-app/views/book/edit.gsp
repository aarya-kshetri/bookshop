<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/5/2018
  Time: 9:10 PM
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
<g:uploadForm controller="book" action="update" method="post">
    <label>ISBN</label><br/>
    <g:textField class="form-control" name="isbn" value="${book.isbn}"></g:textField><br/>

    <label>Title</label><br/>
    <g:textField class="form-control" name="title" value="${book.title}"></g:textField><br/>

    <label>Subcategory</label><br/>
    <g:select class="form-control" name="subcategory" from="${cList}" value="${cList as String}" noSelection = "['':'-choose category-']" /><br/>

    <label>Author</label><br/>
    <g:textField class="form-control" name="author" value="${book.author}"></g:textField><br/>

    <label>Publisher</label><br/>
    <g:textField class="form-control" name="publisher" value="${book.publisher}"></g:textField><br/>

    <label>Stock</label><br/>
    <g:textField class="form-control" name="stock" value="${book.stock}"></g:textField><br/>

    <label>Publication Date</label><br/>
    <g:textField class="form-control" name="publicationDate" value="${book.publicationDate}"></g:textField><br/>

    <label>Description</label><br/>
    <textarea class="form-control" name="description" value="${book.description}">${book.description}</textarea><br/>

    <label>Image</label><br/>
    <input class="form-control" type="file" name="image" value="${book.description}"><br/><br/>

    <label>Price</label><br/>
    <g:textField class="form-control" name="price" value="${book.price}"></g:textField><br/>
    <g:hiddenField name="id" value="${book.id}"/>
    <g:submitButton class="btn btn-primary" name="update" value="Update"/>
</g:uploadForm>
</div>
</body>
</html>