<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/6/2018
  Time: 4:57 PM
--%>

<%@ page import="com.bookshop.Book" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="master"/>
    <title></title>
</head>

<body>
<div class="row">


    <!-- *** LEFT COLUMN ***
			_________________________________________________________ -->

    <div class="col-sm-3">

        <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
        <div class="panel panel-default sidebar-menu">

            <div class="panel-heading">
                <h3 class="panel-title">Categories</h3>
            </div>

            <div class="panel-body">
                <ul class="nav nav-pills nav-stacked category-menu">
                    <g:each in="${cat}" var="i">
                        <li><a href="javacript: void(0)">${i.title}</a> </li>
                        <ul>
                            <g:each in="${i.subcategory}" var="j">
                                <li>
                                    <g:link controller="home" action="getSubcategory" id="${j.id}">${j.title}</g:link>
                                </li>
                            </g:each>

                        </ul>
                    </g:each>
                </ul>

            </div>
        </div>
    </div>


<div class="col-sm-8">
    <div class="row" style=" display: flex; flex-flow: row wrap;">

        <g:render template="maintemp" model="book"/>
    </div>
</div>



</div>
</body>
</html>