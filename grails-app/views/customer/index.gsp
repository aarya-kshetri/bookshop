<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/8/2018
  Time: 3:33 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="master"/>
    <title></title>
</head>

<body>
<div class="row">
    <div class="col-md-6">
        <div class="box">
            <h2 class="text-uppercase">New account</h2>
            <form action="register" controller="customer">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email"  name="email" class="form-control" id="email">
                </div>
                <div class="form-group">
                    <label for="email">Password</label>
                    <input type="password"  name="password" class="form-control" id="password">
                </div>
                <div class="text-center" style="margin-top: 50px;">
            <g:submitButton class="btn btn-template-main" name="register" value="Register"/>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>