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
                        <a href=><i class="fa fa-fw fa-edit"></i>Curriculum</a>
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
                     

                        <form:form modelAttribute="vlogsDto" role="form">

                          <div class="form-group">
                              <label>Video Title</label>
                              <input type="text" id="title" name="title" class="form-control" placeholder="Enter Course Title">
                          </div>
                           <div class="form-group">
                              <label>Video Link</label>
                              <input type="text" id="link" name="link" class="form-control" placeholder="Enter Course Price">
                          </div>
                          
                                                      
                           <div class="form-group">
                              <label>Video Description (100-150 Words)</label>
                              <textarea id="description" name="description" class="form-control" rows="5" ></textarea>
                          </div>
                          
                          
                          
                                        <div class="form-group">
                                                          <label>Course Category</label>
                                                          <div class="checkbox">
                                                              <label>
                                                                  <input type="checkbox" value="">Big Data 
                                                              </label>
                                                          </div>
                                                          <div class="checkbox">
                                                              <label>
                                                                  <input type="checkbox" value="">Database &amp NoSqls
                                                              </label>
                                                          </div>
                                                          <div class="checkbox">
                                                              <label>
                                                                  <input type="checkbox" value="">Data Science
                                                              </label>
                                                          </div>
                                                          <div class="checkbox">
                                                              <label>
                                                                  <input type="checkbox" value="">Programming &amp Web Development
                                                              </label>
                                                          </div>
                                                           <div class="checkbox">
                                                              <label>
                                                                  <input type="checkbox" value="">Others
                                                              </label>
                                                          </div>
                                                      </div>
                                                      
                                                      

                          
							
							
                            
                            <button type="submit" class="btn btn-default">Save Vlog</button>
                           
                            
                            
                            
                            

                            

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