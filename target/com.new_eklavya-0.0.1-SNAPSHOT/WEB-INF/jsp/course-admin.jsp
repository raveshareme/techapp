<%@include file="includes/admin_header.jsp" %>


  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                     <li  class="active">
                        <a href="<c:url value="/admin/courses"/>""><i class="fa fa-fw fa-edit"></i> All Courses</a>
                    </li>
                    <li>
                        <a href="<c:url value="/admin/courses/new"/>"><i class="fa fa-fw fa-edit"></i>Create Course</a>
                    </li>
                   

                </ul>
            </div>
            /.navbar-collapse
        </nav>


        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Course Management
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Manage Course</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> All Courses
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                
                
                 <div class="container">
                 
                 

<br/>
                 
                 
        
        <div class="row">
        <c:forEach items="${courseList }" var="course">
        
            <div class="col-md-4 img-portfolio">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-hover" src="http://placehold.it/100x50" alt="">
                </a>
                <h3>
                	 <p >${course.title}</p>
                     <a href="<c:url value="/admin/courses/${course.permalink}" /> ">Edit</a> 
                </h3>
                <br><br>
               
            </div>
            
           </c:forEach>
            </div>
             
</div>
                
             </div>
         </div>
         
         <%@include file="includes/admin_footer.jsp" %>