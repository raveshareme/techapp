<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="includes/header.jsp" %>




<body>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">${coursePost.title} 
                    <small>Subheading</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/">Home</a>
                    </li>
                    <li ><a href="/course">Course</a></li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Portfolio Item Row -->
        <div class="row">

            <div class="col-md-8">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">


                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
<!--                             <img class="img-responsive" src="http://placehold.it/750x500" alt=""> -->
                            <iframe width="750" height="500" src="https://www.youtube.com/embed/9cx1oEl_mLA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        </div>
                    </div>

                   
                </div>
            </div>

            <div class="col-md-4">
             <sec:authorize access="isAnonymous()">
               
               <a href="<c:url value="/course/${permalink}/enroll" />"  class="btn btn-primary btn-lg">Enroll Now</a>
               
               </sec:authorize>
               
            <sec:authorize access="isAuthenticated()">
              <a href="/users/<sec:authentication property='principal.id' />/course/${permalink}/pay"  class="btn btn-primary btn-lg">Enroll Now</a>
               </sec:authorize>
                 <br><br>
                <h3><strong>Features</strong></h3>
                <br>
                                <ul>    
                    <li>Hours of Classes</li>
                    <li>Hours of Assignments</li>
                    <li>Hours of Project work</li>
                    <li>Loads of supplementary resources</li>
                    <li>Verifiable Certificate</li>
                    <li>24 x 7 Premium Support</li>
                    <li><strong>Language: English</strong></li>
                </ul>
                
                
            </div>
            
            
                                </div>
        <br><br>
         <div class="well">
       
       

 <div class="panel-group" id="accordion">
  <div class="panel panel-primary">
    <div  class="panel-heading">
      <h4 class="panel-title">
        <a  data-toggle="collapse" data-parent="#accordion" href="#collapse1">
       <strong> Requirement</strong></a>
      </h4>
    </div>
    <div id="collapse1" class="panel-collapse collapse in">
      <div class="panel-body">${coursePost.requirement}</div>
    </div>
  </div>
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">
        <strong>Description</strong></a>
      </h4>
    </div>
    <div id="collapse2" class="panel-collapse collapse">
      <div class="panel-body">${coursePost.description}</div>
    </div>
  </div>
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">
        <strong>curriculum</strong></a>
      </h4>
    </div>
    <div id="collapse3" class="panel-collapse collapse">
      <ul class="list-group">
  <li class="list-group-item">Cras justo odio</li>
  <li class="list-group-item">Dapibus ac facilisis in</li>
  <li class="list-group-item">Morbi leo risus</li>
  <li class="list-group-item">Porta ac consectetur ac</li>
  <li class="list-group-item">Vestibulum at eros</li>
</ul>
    </div>
  </div>
  <div class="panel panel-primary">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">
        <strong>Project</strong></a>
      </h4>
    </div>
    <div id="collapse4" class="panel-collapse collapse">
      <div class="panel-body">${coursePost.project}</div>
    </div>
  </div>
</div> 
       </div>  
        </div>
        <!-- /.row -->
        
 </body>     
       

        <%@include file="includes/footer.jsp" %>