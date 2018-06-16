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

    <title>Tech-Eklavya; Level Up Your Tech Skills</title>
    
    <meta name="description" content="Level Up Your Tech Skills, Join Online Courses on Big Data, Programming & Web Frameworks, Data Science, Database Management, No Sql, Analytics. Updating Course contents almost daily. Once enrolled , You will get life time access with all the updates , Premium 24 / 7 Support, get certificates with verifiable links. Join Students community spread across 73 countries.">

    <!-- Bootstrap Core CSS -->
    <link href="<c:url value="/public/lib/bootstrap/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="<c:url value="/public/lib/bootstrap/css/stylish-portfolio.css" />" rel="stylesheet">

	  <!-- Our CSS -->
	 <link href="<c:url value="/public/css/mycss.css" />" rel="stylesheet">
	 
	 <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Architects+Daughter" />
	 
	 
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

                  </ul>
              </div>
              <!-- /.navbar-collapse -->
          </div>
          <!-- /.container -->
          

      </nav>
      <div>
<%--       <c:if test="${not empty flashMessage}"> --%>
<!-- 		<div class="alert alert-danger alert-dismissable"> -->
<!--       	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
<%-- 		 <h3> ${flashMessage} </h3> --%>
<!--       	</div> -->
<%--       </c:if> --%>

    </div>
      

     <br>



		  <div class="container">
      <br>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">All Courses
                    <small>Subheading</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Courses</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
		</div>

        <!-- Projects Row -->
        <div class="container">
        
        <div class="row">
        <c:forEach items="${courseList }" var="course">
        
            <div class="col-md-4 img-portfolio">
                <a href="portfolio-item.html">
<!--                     <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt=""> -->
                   <img class="img-responsive img-hover" src="/public/lib/bootstrap/img/di.jpg" alt="DI course Image" style="width:200px;height:200px;">
                </a>
                <h3>
                     <a href="<c:url value="/course/${course.permalink}" /> ">${course.title}</a> 
                     <p class="text-primary">${course.price}</p> 
                </h3>
                <p>${course.description}</p>
            </div>
           </c:forEach>
            </div>
             
</div>




<%@include file="includes/footer.jsp" %>