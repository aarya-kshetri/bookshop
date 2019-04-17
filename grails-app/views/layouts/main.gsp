<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Book Shop"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>


    <g:layoutHead/>
</head>
<body>

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header" style="color: blue;">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <i class="fa grails-icon">
                        <asset:image src="logo2.png"/>
                    </i> Book Shop
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <ul class="nav navbar-nav navbar-right">
                    <sec:ifNotLoggedIn>
                        <li><g:link controller="login">Login</g:link> </li>
                    </sec:ifNotLoggedIn>
                    <sec:ifLoggedIn>

                                <li><g:link controller="home" action="dashboard">Home</g:link></li>
                                <li><g:link controller="home">Dashboard</g:link></li>

                                <li><g:link controller="book" action="create">Add Book</g:link> </li>
                                <li><g:link controller="category" action="create">Add Category</g:link></li>
                                <li><g:link controller="subcategory" action="create">Add Sub-category</g:link></li>
                                <li><g:link controller="logout">Logout</g:link> </li>

                            </ul>
                    </sec:ifLoggedIn>
                    <g:pageProperty name="page.nav" />
                </ul>
            </div>
        </div>
    </div>

    <g:layoutBody/>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
