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
                        <a href="<c:url value="/admin/courses/${permalink}" />"><i class="fa fa-fw fa-edit"></i>Active Course</a>
                    </li>
                    <li >
                        <a href="<c:url value="/admin/courses/${permalink}/sections" />"><i class="fa fa-fw fa-edit"></i>Add Section</a>
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
                     <h1 class="page-header"><a href="/admin/courses/${permalink}/edit">${courseDto.title}  </a>
                     </h1>
                     
                     <c:forEach items="${courseDto.sections}" var="section">
                     <div class="form-group">
                              <label>Section Name</label>
                             <h3> <a href="<c:url value="/admin/courses/${permalink}/edit/${section.permalink}" />">${section.name} </a>|<a href="<c:url value="/admin/courses/${permalink}/sections/${section.permalink}/lectures" />">Add Lecture</h3>
                          </div>                       
                       
                      <c:forEach items="${section.lectures}" var="lecture">
                      <p>${lecture.lecture_name}</p>
                      </c:forEach>
                        
                        </c:forEach>
                        
                        
                       
                        
                        
                         
                         
                    </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
                                      
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<%@include file="includes/admin_footer.jsp" %>