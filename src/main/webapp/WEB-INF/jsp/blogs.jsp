  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
       

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Global Site Tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-85532096-1');
</script>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tech-Eklavya: <c:out value="${blogPost.tag}" /></title>
    
    <meta name="description" content=<c:out value="${blogPost.meta}" />>

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/public/lib/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/public/lib/bootstrap/css/stylish-portfolio.css" />" rel="stylesheet">

	  <!-- Our CSS -->
	 <link href="<c:url value="/public/css/mycss.css" />" rel="stylesheet">
	 
	 <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Architects+Daughter" />
	 
	 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 
	 
<%-- 	  <link href="<c:url value="/public/lib/bootstrap/css/mymodal.css" />" rel="stylesheet"> --%>
	  
	 
    <!-- Custom Fonts -->
    <link href="<c:url value="/public/lib/bootstrap/font-awesome/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
     <script src='https://www.google.com/recaptcha/api.js'></script>
     
     <meta name="google-site-verification" content="n80RiE5RHxMf9RYUkls20MfEtUjaGnvHZ-bTL1ONGGI" />
     
     
     <style>
     	.fa-social {
    padding: 20px;
    font-size: 30px;
    width: 50px;
    text-align: center;
    text-decoration: none;
}

/* Add a hover effect if you want */
.fa:hover {
    opacity: 0.7;
}

/* Set a specific color for each brand */

/* Facebook */
.fa-facebook {
    background: #3B5998;
    color: white;
}

/* Twitter */
.fa-twitter {
    background: #55ACEE;
    color: white;
}
.fa-google-plus{
	 background: #CC0000;
    color: white;

}
.fa-linkedin{
 background: #33b5e5;
    color: white;

}
     
     </style>

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
                  <a class="navbar-brand" style="color:#dd2c00"  href="<c:url value="/" />" ><strong>Tech-Eklavya</strong> 
                 </a>
              </div>
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                  <ul class="nav navbar-nav navbar-right">
                      
                      <li>
                          <a href="<c:url value="/course" />" > Courses</a>
                      </li>
                      
                      <li class="dropdown ">
                          <a href="<c:url value="blogs" />" / class="dropdown-toggle" data-toggle="dropdown" >Resources  <i class="fa fa-caret-down" ></i> </a>
                          <ul class="dropdown-menu">
                          	<li>
                           		<a href="<c:url value="/videos" />" >Videos</a>
                        	</li>
                        	<li>
                           		<a href="<c:url value="/blogs" />">Blogs</a>
                        	</li>
                        	<li>
                           		<a href="<c:url value="/blogs/code" />" >Code</a>
                        	</li>
                        	<li>
                           		<a href="<c:url value="/blogs/concordance" />">Concordance</a>
                        	</li>
                        	<li>
                           		<a href="/downloads">Downloads</a>
                        	</li>
                          </ul>
                       </li>   	
                        <li>
                           <a href="<c:url value="/weekly" />" > Data This Week</a>
                        </li>
                  <sec:authorize access="isAnonymous()">
                        <li>
                         
                          <a href="<c:url value="/login" />" >Sign In</a>
                      </li>
                      </sec:authorize>
                      <sec:authorize access="isAuthenticated()">
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <span class="glyphicon glyphicon-user"></span>
                      <sec:authentication property="principal.name" /> <b class="caret"></b>
                  </a>
                  <ul class="dropdown-menu">
                     <li><a href="/users/<sec:authentication property='principal.id' />"><span class="glyphicon glyphicon-user"></span> My Courses</a></li>
                     <sec:authorize access="hasRole('ADMIN')">
			            <li role="separator" class="divider"></li>
			            <li><a href="/admin">Admin</a></li>
		            </sec:authorize>
                     
                     	<li>
	                    <c:url var="logoutUrl" value="/logout" />
		               	<form:form	id="logoutForm" action="${logoutUrl}" method="post">
					    </form:form>
					    <a href="#" onclick="document.getElementById('logoutForm').submit()"> Sign out</a>
                     </li>
                      </sec:authorize>
<%--                      <sec:authorize access=hasRole("ADMIN")> --%>
<!--                      		<li role="separator" class="divider"></li> -->
<!--                      		<li><a href="/admin">Admin</a> -->
<%--                      	</sec:authorize> --%>
                  </ul>
              </li>
           
                  </ul>
              </div>
              <!-- /.navbar-collapse -->
          </div>
          <!-- /.container -->
          

      </nav>
      <c:if test="${not empty flashMessage}">
		<div class="alert alert-danger alert-dismissable">
      	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		 <h3> ${flashMessage} </h3>
      	</div>
      </c:if>
<!--        Modal starts here -->
		  
<!-- 		  <style> -->
<!-- /*   .modal-header, h4, .close { */ -->
<!-- /*       background-color: #337ab7; */ -->
<!-- /*       color:white !important; */ -->
<!-- /*       text-align: center; */ -->
<!-- /*       font-size: 30px; */ -->
<!-- /*   } */ -->
<!-- /*   .modal-footer { */ -->
<!-- /*       background-color: #f9f9f9; */ -->
<!-- /*   } */ -->
<!-- <!--   </style> --> -->
<!-- <!-- Modal --> -->
<!-- <!-- <div class="container"> --> -->
<!-- <!--   <div class="modal fade" id="myModal" role="dialog"> --> -->
<!-- <!--     <div class="modal-dialog"> --> -->
    
<!-- <!--       Modal content --> -->
<!-- <!--       <div class="modal-content"> --> -->
<!-- <!--         <div class="modal-header" style="padding:35px 50px;"> --> -->
<!-- <!--           <button type="button" class="close" data-dismiss="modal">&times;</button> --> -->
<!-- <!--           <h4><span class="glyphicon glyphicon-education"></span> Login</h4> --> -->
          
<!-- <!--         </div> --> -->
<!-- <!--         <div class="modal-body" style="padding:40px 50px;"> --> -->
<%-- <%--           <form role="form"> --%> --%>
<!-- <!--             <div class="form-group"> --> -->
<!-- <!--               <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label> --> -->
<!-- <!--               <input type="text" class="form-control" id="usrname" placeholder="Enter email"> --> -->
<!-- <!--             </div> --> -->
<!-- <!--             <div class="form-group"> --> -->
<!-- <!--               <label for="psw"><span class="glyphicon glyphicon-lock"></span> Password</label> --> -->
<!-- <!--               <input type="text" class="form-control" id="psw" placeholder="Enter password"> --> -->
<!-- <!--             </div> --> -->
<!-- <!--             <div class="checkbox"> --> -->
<!-- <!--               <label><input type="checkbox" value="" checked>Remember me</label> --> -->
<!-- <!--             </div> --> -->
<!-- <!--               <button type="submit" class="btn btn-primary btn-block"><span class="glyphicon glyphicon-off"></span> Login</button> --> -->
<%-- <%--           </form> --%> --%>
<!-- <!--         </div> --> -->
<!-- <!--         <div class="modal-footer"> --> -->
<!-- <!--           <p><a href="#">Forgot Password</a></p> --> -->
<!-- <!--           <p> New to tech-eklavya? <a href="/" onclick="$('#myModal').modal('hide')">Enroll here.</a></p> --> -->
<!-- <!--         </div> --> -->
<!-- <!--       </div> --> -->
      
<!-- <!--     </div> --> -->
<!-- <!--   </div>  --> -->
<!-- <!-- </div> --> -->
 
<!-- <!-- <script> --> -->
<!-- // $(document).ready(function(){ -->
<!-- //     $("#myBtn").click(function(){ -->
<!-- //         $("#myModal").modal(); -->
<!-- //     }); -->
<!-- // }); -->
<!-- </script> -->

		  
		  
<!-- 		   Modal ends here   -->
    
      

     <br>
  
   <!-- Page Content -->
   <br><br>
  

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><c:out value="${blogPost.title}" />
                    <small>by <a href="/">Tech-eklavya</a>
                    </small>
                </h1>
                
                <ol class="breadcrumb">
                    <li><a href="/">Home</a>
                    </li>
                    <li class="active">Blogs</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">

                <!-- Blog Post -->

               

                <!-- Date/Time -->
                

                <hr>

                <!-- Preview Image -->
                <img class="img-responsive img-hover" src="${blogPost.image}" alt="" style="width:900px;height:300px;">

                <hr>
                
                 
                <small><strong>Categories-</strong><q><c:forEach var="cat" items="${blogPost.categories}"> ${cat}  </c:forEach></q></small>
               
                
                <br><br>
                <div class="row">
                 <div class="col-lg-3"></div>
                <div class="col-lg-8">
<a type="button" class="btn-floating  btn-lg btn-fb" href="${blogPost.fbLink}"><i class="fa fa-social fa-facebook"></i></a>
<!--Twitter-->
<a type="button" class="btn-floating btn-lg btn-tw" href="${blogPost.twink}"><i class="fa fa-social fa-twitter"></i></a>
<!--Google +-->
<a type="button" class="btn-floating btn-lg btn-gplus" href="${blogPost.gpLink}"><i class="fa fa-social fa-google-plus"></i></a>
<!--Linkedin-->
<a type="button" class="btn-floating btn-lg btn-li" href="${blogPost.inLink}"><i class="fa fa-social fa-linkedin"></i></a>
</div>

   </div>
         <br><br><br>
         
                <!-- Post Content -->
                
                <p class="blog">
                 ${blogPost.content} </p>

                <hr>

                <!-- Blog Comments -->

                <!-- Comments Form -->
<!--                 <div class="well"> -->
<!--                     <h4>Leave a Comment:</h4> -->
<!--                     <form role="form"> -->
<!--                         <div class="form-group"> -->
<!--                             <textarea class="form-control" rows="3"></textarea> -->
<!--                         </div> -->
<!--                         <button type="submit" class="btn btn-primary">Submit</button> -->
<!--                     </form> -->
<!--                 </div> -->

                <hr>

                <!-- Posted Comments -->

                <!-- Comment -->
<!--                 <div class="media"> -->
<!--                     <a class="pull-left" href="#"> -->
<!--                         <img class="media-object" src="http://placehold.it/64x64" alt=""> -->
<!--                     </a> -->
<!--                     <div class="media-body"> -->
<!--                         <h4 class="media-heading">Start Bootstrap -->
<!--                             <small>August 25, 2014 at 9:30 PM</small> -->
<!--                         </h4> -->
<!--                         Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. -->
<!--                     </div> -->
<!--                 </div> -->

<!--                 Comment -->
<!--                 <div class="media"> -->
<!--                     <a class="pull-left" href="#"> -->
<!--                         <img class="media-object" src="http://placehold.it/64x64" alt=""> -->
<!--                     </a> -->
<!--                     <div class="media-body"> -->
<!--                         <h4 class="media-heading">Start Bootstrap -->
<!--                             <small>August 25, 2014 at 9:30 PM</small> -->
<!--                         </h4> -->
<!--                         Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. -->
<!--                         Nested Comment -->
<!--                         <div class="media"> -->
<!--                             <a class="pull-left" href="#"> -->
<!--                                 <img class="media-object" src="http://placehold.it/64x64" alt=""> -->
<!--                             </a> -->
<!--                             <div class="media-body"> -->
<!--                                 <h4 class="media-heading">Nested Start Bootstrap -->
<!--                                     <small>August 25, 2014 at 9:30 PM</small> -->
<!--                                 </h4> -->
<!--                                 Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         End Nested Comment -->
<!--                     </div> -->
<!--                 </div> -->

            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="/blogs">Big Data & Analytics</a>
                                </li>
                                <li><a href="/blogs">Programming & Web Development</a>
                                </li>
                                <li><a href="/blogs">Data Science</a>
                                </li>
                                <li><a href="/blogs">Cloud Computing</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="/blogs">System Administration</a>
                                </li>
                                <li><a href="/blogs">DevOps</a>
                                </li>
                                <li><a href="/blogs">Database Management</a>
                                </li>
                                <li><a href="/blogs">Software Testing</a>
                                </li>
                                <li><a href="/blogs">Mobile Development</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
<!--                 <div class="well"> -->
<!--                     <h4>Side Widget Well</h4> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p> -->
<!--                 </div> -->

            </div>

        </div>
        <!-- /.row -->

        <hr>
   
               <%@include file="includes/footer.jsp" %>