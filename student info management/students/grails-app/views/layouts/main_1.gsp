
<html lang="en" class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

<g:layoutHead/>
	<asset:stylesheet src="bootstrap.min.css"/>	
	<asset:stylesheet src="modern-business.css"/>	
	


</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" >Student Information</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="${createLink(uri: '/')}">Home</a>
                    </li>

                    <li>

                        <a href="${createLink(uri: '/student/create')}">New Student</a>
                    </li>
					
					 <li>
                        <g:link controller="Student">Student</g:link>
                    </li>
					


                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.html">Page-1</a>
                            </li>
                            <li>
                                <a href="sidebar.html">Page-2</a>
                            </li>
                       
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

 

    <!-- Page Content -->
    <div class="container">

	<g:layoutBody/>


        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; www.studentinfo.com</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->
	
	<asset:javascript src="jquery.js"/>
	<asset:javascript src="bootstrap.min.js"/>


</body>

</html>
