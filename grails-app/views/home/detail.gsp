<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/6/2018
  Time: 9:34 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="master"/>
    <title></title>
</head>

<body>
<div id="heading-breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-md-7">
                <h1>${book.title}</h1>
            </div>
        </div>
    </div>
</div>

<div id="content">
    <div class="container">

        <div class="row">

            <!-- *** LEFT COLUMN ***
		    _________________________________________________________ -->

            <div class="col-md-9">


                <div class="row" id="productMain">
                    <div class="col-sm-6">
                        <div id="mainImage">
                            <img src="${application.contextPath}/static/assets/images/${book.image}" alt="" class="img-responsive">
                        </div>


                    </div>
                    <div class="col-sm-6">
                        <div class="box">

                            <form>
                                <h2 class="text-center"><i>By ${book.author}</i></h2>
                                <h4  class="text-center">${book.publisher}</h4>
                                <p class="price">Rs. ${book.price}</p>

                                <p class="text-center">
                                    <button type="submit" class="btn btn-template-main" disabled><i class="fa fa-shopping-cart"></i> Add to cart</button>
                                    <button type="submit" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Add to wishlist" disabled><i class="fa fa-heart-o"></i>
                                    </button>
                                </p>

                            </form>
                        </div>

                        %{----}%
                    </div>

                </div>


                <div class="box" id="details">
                    <p class="lead">ISBN: ${book.isbn}
                    </p>
                    <p class="lead">${book.description}
                    </p>

                </div>


            </div>
            <!-- /.col-md-9 -->


            <!-- *** LEFT COLUMN END *** -->

            <!-- *** RIGHT COLUMN ***
		  _________________________________________________________ -->

            <div class="col-sm-3">



            </div>
            <!-- /.col-md-3 -->

            <!-- *** RIGHT COLUMN END *** -->

        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->
</div>
<!-- /#content -->



</body>
</html>