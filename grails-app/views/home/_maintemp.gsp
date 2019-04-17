<g:each in="${book}" var="b">

    <div class="col-md-4 col-sm-6">
        <div class="product">
            <div class="image">
                <g:link controller="home" action="detail" id="${b.id}"><img src="${application.contextPath}/static/assets/images/${b.image}" alt="" class="img-responsive image1" height="150" width="235"></g:link>


            </div>
            <!-- /.image -->
            <div class="text">
                <h3><a href="shop-detail.html">${b.title}</a></h3>
                <p class="price">Rs. ${b.price}</p>

                <g:link controller="home" class="btn btn-template-main" action="detail" id="${b.id}">View detail</g:link>
                <a href="#" class="btn btn-template-main"><i class="fa fa-shopping-cart"></i>Add to cart</a>


            </div>
            <!-- /.text -->
        </div>
        <!-- /.product -->
    </div>
</g:each><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 3/6/2018
  Time: 9:34 PM
--%>

