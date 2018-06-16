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
                    <li class="active">
                        <a href="<c:url value="/admin/courses/new"/>"><i class="fa fa-fw fa-edit"></i>Outline</a>
                    </li>
                    <li >
                        <a href="forms.html"><i class="fa fa-fw fa-edit"></i>Curriculum</a>
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

                        <form:form modelAttribute="courseDto" role="form">
                        
                        <div class="form-group">
                              <label>Lecture Name</label>
                              <input type="text" id="lecture_name" name="lecture_name" class="form-control" placeholder="Enter Lecture Name">
                          </div>
                          
                           <div class="form-group">
                              <label>Lecture Link</label>
                              <input type="text" id="lecture_link" name="lecture_link" class="form-control" placeholder="Enter lecture Link">
                          </div>
                           
                          
                            <button type="submit" class="btn btn-primary">Save</button>
                            <button type="reset" class="btn btn-primary">Reset Course</button>
                            
                            
                            
                            

                            

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