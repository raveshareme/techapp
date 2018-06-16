<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



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
                        	<li>
                           		<a href="<c:url value="/blogs/code" />" >Code</a>
                        	</li>
                        	<li>
                           		<a href="<c:url value="/blogs/concordance" />">Concordance</a>
                        	</li>
                        	<li>
                           		<a href="<c:url value="/downloads" />">Downloads</a>
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
      <div>
<%--       <c:if test="${not empty flashMessage}"> --%>
<!-- 		<div class="alert alert-danger alert-dismissable"> -->
<!--       	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button> -->
<%-- 		 <h3> ${flashMessage} </h3> --%>
<!--       	</div> -->
<%--       </c:if> --%>

    </div>
      

     <br>







    <!-- Header -->
    
        <header id="top" class="header">
    
       
    
    
        <div class="text-vertical-center">
        
       <c:if test="${not empty flashMessage}">
		<div class="alert alert-danger alert-dismissable">
      	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		 <h3> ${flashMessage} </h3>
      	</div>
      </c:if>

            <br>
            <a href="/signup" class="btn btn-dark btn-lg">Sign Up</a>
        </div>
    </header>

    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                <h2>Level up your Tech Skills,</h2>
                <hr class="small">
                    <h2>Join Students Community spread across 73 countries !</h2>

                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
        <br>
    <br>
    <br>
    <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                <h2>Updating Course contents almost daily.</h2>
                <hr class="small">
                   

                </div>
            </div>
            <!-- /.row -->
        </div>
    
    
    
    </section>
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Our Courses</h2>
                    <hr class="small">
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-globe "></i>
                        <h3>Big Data & Hadoop</h3>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-flask "></i>
                        <h3>Data Science</h3>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-database "></i>
                        <h3>DBMS & NoSqls</h3>
                        
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <i class="fa fa-4x fa-code "></i>
                        <h3>Programming & Web Development</h3>
                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
    <br>
    

    <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" >
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2>Our Services</h2>
                    <hr class="small">
                    <div class="row">

                    <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-key fa-stack-2x text-primary sr-icons"></i>

                            </span>
                                <h3>
                                    <strong>Life Time access</strong>
                                </h3>
                                <h5><strong>with all the updates !</strong></h5>
<!--                                 <a href="#" class="btn btn-light">Learn More</a> -->
                            </div>
                        </div>



                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-wrench fa-2x fa-fw text-primary sr-icons"></i>

                            </span>
                                <h3>
                                    <strong>Premium Support</strong>
                                </h3>
                                <h5><strong>Life Time 24 / 7 Support !</strong></h5>
<!--                                 <a href="#" class="btn btn-light">Learn More</a> -->
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-repeat fa-stack-2x text-primary sr-icons"></i>

                            </span>
                                <h3>
                                    <strong>Flexible Schedule</strong>
                                </h3>
                                <h5><strong>Learn anytime from any device!</strong></h5>
<!--                                 <a href="#" class="btn btn-light">Learn More</a> -->
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-graduation-cap fa-stack-2x text-primary sr-icons"></i>

                            </span>
                                <h3>
                                    <strong>Certificates</strong>
                                </h3>
                                <h5><strong>Our Own Verifiable certificates</strong></h5>
<!--                                 <a href="#" class="btn btn-light">Learn More</a> -->
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
    <br>
    


<br>

<div class="container-fluid services bg-primary text-center">
<!--   <h3>"When pupil is ready Guru appears" - Eklavya</h3> -->
<!--   <p>                     ( Mahabharat, An ancieant Indian Saga )</p> -->

<h3>Our Students Say.</h3>
                <hr class="small">


<!-- copy starts from here -->

<div id="carousel-example" class="carousel slide" data-ride="carousel">

<!--                     <ol class="carousel-indicators"> -->
<!--                         <li data-target="#carousel-example" data-slide-to="0" class="active"></li> -->
<!--                         <li data-target="#carousel-example" data-slide-to="1"></li> -->
<!--                         <li data-target="#carousel-example" data-slide-to="2"></li> -->
<!--                     </ol> -->

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                   
                                    <h4><i class="fa fa-quote-left"></i> Very clear explanations of concepts. Easy to follow and interesting.
. <i class="fa fa-quote-right"></i></h4>
                                     <div class="user-img pull-right">
						<img src="assets/img/user.gif" alt="" class="img-u image-responsive"  />						
					</div>
					
                                    <h5 class="pull-right"><strong class="c-black">Mandira Hegde
</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> Clean and clear
. <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Praisan Padungweang
</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4><i class="fa fa-quote-left"></i> Good Course, Helpful Practice activities
. <i class="fa fa-quote-right"></i></h4>
                                        <div class="user-img pull-right">
						<img src="assets/img/user.gif" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Nagarjun</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> Instructor has a good command over the subject. Very nicely explained
. <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Vaibhav</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> Excellent course. <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Prabhakar Kumar
</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> well explained, engaging delievery . <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Sergey Karpiy

</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> So far the course seems Good, Instructor is very knowledgable and has explained Well. <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Venugopal</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> Good Course. <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Reji Jacob</strong></h5>
                                </div>
                            </div>
                        </div>
                   </div>
                   </div>
                


<!-- copy ends here -->








</div>

<br>
<div class="container">
</div>
<br>
<div class="container">
</div>
<br>
<div class="container">
</div>
<br>

    <section id="footer-section" class="footer-section">

        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-2">
                    <h3 class="text-headline text-light">Corporate</h3>
                    <ul class="list-unstyled">
                        <li><a  href="/faq">FAQ</a></li>
                        <li><a  href="/contact">Contact Us</a></li>

                        <li><a href="/legal">Legal</a></li>
                        <li><a href="/sign-up">Sign Up</a></li>

                    </ul>
                </div>
                  <div class="col-sm-6 col-md-5">
                    <h3 class="text-headline text-light">Tech-Eklavya</h3>
                      <ul class="list-unstyled">
                      
                    <li><a  href="<c:url value="/course"/>">Courses</a></li>
                    <li><a  href="<c:url value="/blogs" />" >Blogs</a></li>
                    <li><a href="/knowledge-base">Knowledge Base</a></li>
                    <li><a href="/weekly">Data This Week</a></li>
                    </ul>
                  </div>

 <div class="container">
            <div class="row">

                <div class="col-sm-6 col-md-5">
<!--                     <h3 class="text-headline text-light">Subscription</h3> -->
<%--                     <form:form modelAttribute="registration" role="form"> --%>
<%--                     <form:errors /> --%>
<!--                     <div class="form-group"> -->
<!--                         <div class="input-group"> -->
<%--                             <form:input path="email"  name="email" class="form-control" placeholder="Enter email here..." /> --%>
<%--                             <form:errors cssClass="error" path="email" name="email" /> --%>
<!--                             <span class="input-group-btn"> -->
<!-- 								<button class="btn btn-primary" type="submit">Subscribe</button> -->
<!-- 							  </span> -->
<!--                         </div> -->
<!--                     </div> -->
<%--                     </form:form> --%>


 <h3 class="text-headline text-light">Share Us On</h3>
                <ul class="list-inline">
                <br>
                <br>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//tech-eklavya.com/"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="https://twitter.com/home?status=Checkout%20these%20Courses%20%40%20http%3A//tech-eklavya.com/"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A//tech-eklavya.com/&title=Latest%20Tech%20Courses&summary=&source="><i class="fa fa-linkedin fa-fw fa-3x"></i></a>
                    </li>
                    <li>
                        <a href="https://plus.google.com/share?url=http%3A//tech-eklavya.com/"><i class="fa fa-google-plus fa-fw fa-3x"></i></a>
                    </li>
                </ul>




                    <br/>
                    <br>

                </div> 
                </div>
                </div>
                <br>
                <div class="container"></div><br>

                <div class="col-lg-10 col-lg-offset-1 text-center">
<!--                 <h3 class="text-headline text-light">Share Us On</h3><br> -->
<!--                 <ul class="list-inline"> -->
<!--                     <li> -->
<!--                         <a href="https://www.facebook.com/sharer/sharer.php?u=http%3A//tech-eklavya.com/"><i class="fa fa-facebook fa-fw fa-3x"></i></a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="https://twitter.com/home?status=Checkout%20these%20Courses%20%40%20http%3A//tech-eklavya.com/"><i class="fa fa-twitter fa-fw fa-3x"></i></a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="https://www.linkedin.com/shareArticle?mini=true&url=http%3A//tech-eklavya.com/&title=Latest%20Tech%20Courses&summary=&source="><i class="fa fa-linkedin fa-fw fa-3x"></i></a> -->
<!--                     </li> -->
<!--                     <li> -->
<!--                         <a href="https://plus.google.com/share?url=http%3A//tech-eklavya.com/"><i class="fa fa-google-plus fa-fw fa-3x"></i></a> -->
<!--                     </li> -->
<!--                 </ul> -->
</div>
</div>
</div>
</section>
<%@include file="includes/footer.jsp" %>