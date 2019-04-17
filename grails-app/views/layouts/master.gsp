<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><g:layoutTitle/></title>

    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,500,700,800' rel='stylesheet' type='text/css'>

    <!-- Bootstrap and Font Awesome css -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

    <!-- Css animations  -->
    <asset:stylesheet href="animate.css" rel="stylesheet"/>

    <!-- Theme stylesheet, if possible do not edit this stylesheet -->
    <asset:stylesheet href="style.default.css" rel="stylesheet" id="theme-stylesheet"/>

    <!-- Custom stylesheet - for your changes -->
    <asset:stylesheet href="custom.css" rel="stylesheet"/>

    <!-- Responsivity for older IE -->
    <!--[if lt IE 9]>
        <asset:javascript src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"/>
        <asset:javascript src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"/>
<![endif]-->

    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="img/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/apple-touch-icon-152x152.png" />
    <g:layoutHead/>
</head>

<body>
<div id="all">

    <header>

        <!-- *** TOP ***
_________________________________________________________ -->
        <div id="top">
            <div class="container">
                <div class="row">
                    <div class="col-xs-5 contact">

                    </div>
                    <div class="col-xs-7">
                        <div class="social">
                            <a href="https://facebook.com" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>
                            <a href="https://plus.google.com" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                            <a href="https://twitter.com" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                            <a href="mailto:aarya_kshetri@outlook.com" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                        </div>

                        <div class="login">
                            <sec:ifNotLoggedIn>

                                <g:link controller="login" ><i class="fa fa-sign-in"></i> <span class="hidden-xs text-uppercase">Sign In</span></g:link>
                                <g:link controller="customer" ><i class="fa fa-user"></i> <span class="hidden-xs text-uppercase">Sign Up</span></g:link>
                            </sec:ifNotLoggedIn>
                            <sec:ifLoggedIn>
                                <g:link controller="home" action="index"><span class="hidden-xs text-uppercase">Dashboard</span></g:link>
                                <g:link controller="logout" ><i class="fa fa-user"></i> <span class="hidden-xs text-uppercase">Sign Out</span></g:link>
                            </sec:ifLoggedIn>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- *** TOP END *** -->

        <!-- *** NAVBAR ***
    _________________________________________________________ -->

        <div class="navbar-affixed-top" data-spy="affix" data-offset-top="200">

            <div class="navbar navbar-default yamm" role="navigation" id="navbar">

                <div class="container">
                    <div class="navbar-header">

                        <div class="navbar-brand home">
                            <g:link controller="home" action="dashboard"><asset:image src="bookshop.png"/></g:link>

                            %{--<img src="img/logo-small.png" alt="Book Shop" ><span class="sr-only">Universal - go to homepage</span>--}%
                        </div>
                        <div class="navbar-buttons">
                            <button type="button" class="navbar-toggle btn-template-main" data-toggle="collapse" data-target="#navigation">
                                <span class="sr-only">Toggle navigation</span>
                                <i class="fa fa-align-justify"></i>
                            </button>
                        </div>

                    </div>
                    <!--/.navbar-header -->

                    <div class="navbar-collapse collapse" id="navigation">

                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown active">
                                <g:link controller="home" action="dashboard">Home</b></g:link>

                            </li>
                            <li class="dropdown active">
                                <g:link controller="about">About Us</b></g:link>

                            </li>
                        %{--<sec:ifNotLoggedIn>--}%
                            %{--<li class="dropdown active">--}%
                                %{--<g:link controller="login" >Login </b></g:link>--}%

                            %{--</li>--}%
                        %{--</sec:ifNotLoggedIn>--}%

                        %{--<sec:ifLoggedIn>--}%
                            %{--<li class="dropdown active">--}%
                                %{--<g:link controller="logout" >Logout </b></g:link>--}%

                            %{--</li>--}%
                        %{--</sec:ifLoggedIn>--}%
                        </ul>

                    </div>
                    <!--/.nav-collapse -->



                    <div class="collapse clearfix" id="search">

                        <form class="navbar-form" role="search">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search">
                                <span class="input-group-btn">

                                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button>

                                </span>
                            </div>
                        </form>

                    </div>
                    <!--/.nav-collapse -->

                </div>


            </div>
            <!-- /#navbar -->

        </div>

        <!-- *** NAVBAR END *** -->

    </header>

    <!-- *** LOGIN MODAL ***
_________________________________________________________ -->

    <div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
        <div class="modal-dialog modal-sm">

            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="Login">Customer login</h4>
                </div>
                <div class="modal-body">
                    <form action="${postUrl ?: '/login/authenticate'}" method="POST">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username" placeholder="Enter username">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Enter password">
                        </div>


                        <input class="btn btn-template-main" type="submit" value="Login"/>
                    </form>

                    <p class="text-center text-muted">Not registered yet?</p>
                    <p class="text-center text-muted"><g:link controller="customer"><strong>Register now</strong></g:link>! It is easy and done in 1&nbsp;minute and gives you access to special discounts and much more!</p>

                </div>
            </div>
        </div>
    </div>

    <!-- *** LOGIN MODAL END *** -->



    <div id="content">
        <div class="container">

            <g:layoutBody/>

        </div>
        <!-- /.container -->
    </div>
    <!-- /#content -->


    <!-- *** GET IT ***
_________________________________________________________ -->




    <!-- *** GET IT END *** -->


    <!-- *** FOOTER ***
_________________________________________________________ -->


    <!-- *** COPYRIGHT ***
_________________________________________________________ -->

    %{--<div id="footer" style="position: relative; left: 0; bottom: 0; width: 100%;">--}%
        %{--<div class="container">--}%
            %{--<div class="col-md-12">--}%
                %{--<p class="pull-left">&copy; 2018. Book Shop</p>--}%


            %{--</div>--}%
        %{--</div>--}%
    %{--</div>--}%
    <!-- /#copyright -->

    <!-- *** COPYRIGHT END *** -->



</div>
<!-- /#all -->


<!-- #### JAVASCRIPT FILES ### -->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script>
    window.jQuery || document.write('<asset:javascript src="js/jquery-1.11.0.min.js"/>')
</script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"/>

<asset:javascript src="jquery.cookie.js"/>
<asset:javascript src="waypoints.min.js"/>
<asset:javascript src="jquery.counterup.min.js"/>
<asset:javascript src="jquery.parallax-1.1.3.js"/>
<asset:javascript src="front.js"/>





</body>

</html>