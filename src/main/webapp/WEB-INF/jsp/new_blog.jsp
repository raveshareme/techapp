<%@include file="includes/admin_header.jsp" %>
  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li >
                        <a href="<c:url value="/admin/blog-management" />"><i class="fa fa-fw fa-bar-chart-o"></i> Edit Blog </a>
                    </li>
                    <li class="active">
                        <a href="<c:url value="/admin/blog-management/new" />"><i class="fa fa-fw fa-edit"></i> New Blog</a>
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
                            Blog Management
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Manage Blogs</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> New Blog
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">

                        <form:form modalAttribute="blogDto" role="form">
                        
                         <div class="form-group">
                              <label>Blog Image</label>
                              <input type="text" id="imageUrl" name="imageUrl" class="form-control" placeholder="Enter Blog Image URL here">
                          </div>

                           <div class="form-group">
                              <label>Blog Title</label>
                              <input type="text" id="title" name="title" class="form-control" placeholder="Enter Blog Title">
                          </div>
                           <div class="form-group">
                              <label>Blog Description (100-150 Words)</label>
                              <textarea id="description" name="description" class="form-control" rows="5" ></textarea>
                          </div>
                          <div class="form-group">
                              <label>Blog Content</label>
                              <textarea id="content" name="content" class="form-control" rows="15"></textarea>
                          </div>

						<div class="form-group">
                              <label>Title Tag - (SEO)</label>
                              <input type="text" id="title_tag" name="title_tag" class="form-control" placeholder="Enter HTML Title Tag">
                          </div>
                           <div class="form-group">
                              <label>Meta Description - (SEO))</label>
                              <textarea id="meta_description" name="meta_description" class="form-control" rows="5" ></textarea>
                          </div>
						  <div class="checkbox">
 							 <label><input type="checkbox" value="">Big Data & Analytics</label>
						 </div>
						 <div class="checkbox">
  							<label><input type="checkbox" value="">Programming & Web Development</label>
						 </div>
						 <div class="checkbox">
 							 <label><input type="checkbox" value="">Data Science</label>
						 </div>
						 <div class="checkbox">
  							<label><input type="checkbox" value="">Cloud Computing</label>
						 </div>
						 <div class="checkbox">
 							 <label><input type="checkbox" value="">System Administration</label>
						 </div>
						 <div class="checkbox">
  							<label><input type="checkbox" value="">DevOps</label>
						 </div>
						 <div class="checkbox">
 							 <label><input type="checkbox" value="">Database Management</label>
						 </div>
						 <div class="checkbox">
  							<label><input type="checkbox" value="">Software Testing</label>
						 </div>
						 <div class="checkbox">
  							<label><input type="checkbox" value="">Mobile Development</label>
						 </div>



                            <div class="form-group">
                                <label>Upload Blog Image (800x500)</label>
                                <input type="file" class="btn btn-success btn-lg" >
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