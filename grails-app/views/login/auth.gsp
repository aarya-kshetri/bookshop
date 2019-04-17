<html>
    <head>
        <meta name="layout" content="master"/>
        <title>Login</title>
    </head>

    <body>
    <div class="content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                <div class="box">
                    <h2 class="text-uppercase">Login</h2>
                    <form action="${postUrl ?: '/login/authenticate'}" method="POST">
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" class="form-control" name="username" placeholder="Enter username">
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Enter password">
                        </div>
                        <div class="text-center" style="margin-top: 50px;">
                            <input class="btn btn-template-main" type="submit" value="Login"/>
                        </div>

                    </form>
                </div>

                </div>



                </form>
            </div>
        </div>
    </div>

    </body>
</html>