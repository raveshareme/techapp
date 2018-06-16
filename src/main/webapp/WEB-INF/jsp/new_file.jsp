<%@include file="includes/admin_header.jsp" %>
  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li >
                        <a href="<c:url value="/admin/fileManagement" />"><i class="fa fa-fw fa-bar-chart-o"></i> Edit Files </a>
                    </li>
                    <li class="active">
                        <a href="<c:url value="/admin/fileManagement/new" />"><i class="fa fa-fw fa-edit"></i> New Files</a>
                    </li>


                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        
        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            File Management
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Manage Files</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> New File
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">

                        <form:form modalAttribute="fileDto" role="form">
                        
                         
                        
                        

                           <div class="form-group">
                              <label>File Name</label>
                              <input type="text" id="name" name="name" class="form-control" placeholder="Enter File Name">
                          </div>
                          <div class="form-group">
                              <label>File Link</label>
                              <input type="text" id="link" name="link" class="form-control" placeholder="Enter File Link">
                          </div>
                          <div class="form-group">
                              <label>File Description</label>
                              <textarea id="description" name="description" class="form-control" rows="15"></textarea>
                          </div>
                           
                            <button type="submit" class="btn btn-success btn-lg">Save </button>
                            <button type="reset" class="btn btn-primary btn-lg">Reset </button>

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