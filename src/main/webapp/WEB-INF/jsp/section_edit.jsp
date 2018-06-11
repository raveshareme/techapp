<%@include file="includes/admin_header.jsp" %>


  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                     <li >
                        <a href="<c:url value="/admin/courses"/>""><i class="fa fa-fw fa-edit"></i> All Courses</a>
                    </li>
                    <li >
                        <a href="<c:url value="/admin/courses/new"/>"><i class="fa fa-fw fa-edit"></i>Outline</a>
                    </li>
                    <li class="active">
                        <a href="<c:url value="/admin/courses/${permalink}/sections/${section_link}" />"><i class="fa fa-fw fa-edit"></i>sections</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i>Preview</a>
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
                                <i class="fa fa-edit"></i> New Course
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">
                    
                    <h1>Checking section edit page</h1>
                    <form:form method="POST"  modelattribute="courseDto" role="form">
                     
                    
                    <div class="form-group">
                              <label>Section Title</label>
                              <input type="text" id="name" name="name" class="form-control" value="${courseDto.name}" placeholder="Enter Course Title">
                          </div> 
                          <div class="form-group">
                              <label>Section Description</label>
                              <input type="text" id="section_description" name="section_description" class="form-control" value="${courseDto.section_description}" placeholder="Enter Course Title">
                          </div> 
                      
                        
                        
                       
                        
                        
                         </form:form>
                         
                    </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
                                      
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<%@include file="includes/admin_footer.jsp" %>