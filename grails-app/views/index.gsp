<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Book Shop</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <content tag="nav">



    </content>

    %{--<div class="svg" role="presentation">--}%
        %{--<div class="grails-logo-container">--}%
            %{--<asset:image src="grails-cupsonly-logo-white.svg" class="grails-logo"/>--}%
        %{--</div>--}%
    %{--</div>--}%

    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome to Book Shop</h1>


            <div class="row">

                <ul style="list-style-type: none;" >
                <li><g:link controller="book" class="btn btn-primary btn-lg btn-block">Books</g:link></li>
                <li><g:link controller="category" class="btn btn-primary btn-lg btn-block">Categories</g:link></li>
                <li><g:link controller="subcategory" class="btn btn-primary btn-lg btn-block">Subcategories</g:link></li>
            </ul>
            </div>
        </section>
    </div>

</body>
</html>
