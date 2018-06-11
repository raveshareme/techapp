<%@include file="includes/admin_header.jsp" %>
  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="<c:url value="/admin/blog-management" />"><i class="fa fa-fw fa-bar-chart-o"></i> Edit Blog</a>
                    </li>
                    <li >
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
                                <i class="fa fa-dashboard"></i>  <a href="blog_mngt.html">Manage Blogs</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> Edit Blogs
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <!-- Page Content -->
          <!-- Projects Row -->
          <div class="row">
          <c:forEach items="${blogList }" var="blog">
              <div class="col-md-4 img-portfolio">
                  <a href="portfolio-item.html">
                      <img class="img-responsive img-hover" src="http://placehold.it/700x400" alt="">
                  </a>
                  <h3>
                      <a href="/admin/blog-management/${blog.permalink}/edit" >${blog.title} </a> | <a class="text-danger" href="/admin/blog-management/${blog.permalink}/delete" >Delete</a>
                  </h3>
                  
                  <br>
              </div>
              </c:forEach>
             

          <hr>

          <!-- Pagination -->
          <div class="row text-center">
              <div class="col-lg-12">
                  <ul class="pagination">
                      <li>
                          <a href="#">&laquo;</a>
                      </li>
                      <li class="active">
                          <a href="#">1</a>
                      </li>
                      <li>
                          <a href="#">2</a>
                      </li>
                      <li>
                          <a href="#">3</a>
                      </li>
                      <li>
                          <a href="#">4</a>
                      </li>
                      <li>
                          <a href="#">5</a>
                      </li>
                      <li>
                          <a href="#">&raquo;</a>
                      </li>
                  </ul>
              </div>
          </div>
          <!-- /.row -->

          <hr>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
<%@include file="includes/admin_footer.jsp" %>