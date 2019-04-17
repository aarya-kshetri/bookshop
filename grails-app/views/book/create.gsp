<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/5/2018
  Time: 8:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title></title>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>
<div style="position: relative; margin: auto; margin-bottom: 200px; width: 40%;">
    <g:uploadForm controller="book" action="save" method="post">

            <label for="isbn">ISBN</label><br/>
            <g:textField class="form-control" name="isbn"></g:textField><br/>



        <label>Title</label><br/>
        <g:textField class="form-control" name="title"></g:textField><br/>

        <label>Subcategory</label><br/>
        <g:select class="form-control" name="subcategory" from="${cList}" value="${cList as String}" noSelection = "['':'-choose category-']" /><br/>

        <label>Author</label><br/>
        <g:textField class="form-control" name="author"></g:textField><br/>

        <label>Publisher</label><br/>
        <g:textField class="form-control" name="publisher"></g:textField><br/>

        <label>Stock</label><br/>
        <g:textField class="form-control" name="stock"></g:textField><br/>

        <label>Publication Date</label><br/>
        <g:textField class="form-control" name="publicationDate"></g:textField><br/>

        <label>Description</label><br/>
        <textarea class="form-control" name="description"></textarea><br/>

        <label>Image</label><br/>
        <input class="form-control" type="file" name="image"><br/>

        <label>Price</label><br/>
        <g:textField class="form-control" name="price"></g:textField><br/>

        <g:submitButton class="btn btn-primary" name="save" value="Save"/>
        <br/>
    </g:uploadForm>
</div>



</body>
</html>