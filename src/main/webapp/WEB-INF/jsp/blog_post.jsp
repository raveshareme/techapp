  <%@include file="includes/header.jsp" %>
  
  
  <!-- Page Content -->
    <div class="container">
      <br>
        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Blogs
                    <small>Subheading</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">Blog Home</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">
<c:forEach items="${blogList}"  var="blog">
                <!-- First Blog Post -->
                <h2>
                    <a href="/blogs/${blog.permalink}">${blog.title}</a>
                </h2>
                <p class="lead">
                    by <a href="index.php">Tech-Eklavya</a>
                </p>
                
                <hr>
                <a href="blog-post.html">
                    <img class="img-responsive img-hover" src="http://placehold.it/900x300" alt="">
                </a>
                <hr>
                <p>${blog.description}</p>
                <a class="btn btn-primary" href="/blogs/${blog.permalink}">Read More <i class="fa fa-angle-right"></i></a>
</c:forEach>
                <hr>
            </div>       


            

           

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

                <!-- Blog Categories Well -->
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">Big Data & Analytics</a>
                                </li>
                                <li><a href="#">Programming & Web Development</a>
                                </li>
                                <li><a href="#">Data Science</a>
                                </li>
                                <li><a href="#">Cloud Computing</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#">System Administration</a>
                                </li>
                                <li><a href="#">DevOps</a>
                                </li>
                                <li><a href="#">Database Management</a>
                                </li>
                                <li><a href="#">Software Testing</a>
                                </li>
                                <li><a href="#">Mobile Development</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
<!--                 <div class="well"> -->
<!--                     <h4>Side Widget Well</h4> -->
<!--                     <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p> -->
<!--                 </div> -->

            </div>
            

        </div>
        <!-- /.row -->
        </div>

        <hr>
             <%@include file="includes/footer.jsp" %>