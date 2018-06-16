  <%@include file="includes/header.jsp" %>
  
  
   <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header text-primary">Data this Week
                    <small>  Our Weekly Magazine</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="/">Home</a>
                    </li>
                    <li class="active">weekly</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
   <!-- Blog Post Row -->
   
   
   
    <div class="container">
    
    
    <div class="row ">
     <p class="lead">
                    by <a href="/"><strong>Tech-Eklavya</strong></a>
                </p>
                <p><i class="fa fa-clock-o"></i> Posted on ${weekly.issue}</p>
                <hr>

            <!-- Blog Entries Column -->
            <div >

                <!-- First Blog Post -->
                
               
               
               <a href="/weekly/${weekly.issue}">
                     <img class="img-responsive img-hover" src="/public/lib/bootstrap/img/2.jpg" alt="TE Weekly" style="width:1150px;height:500px;">
                </a>
                <hr>
                <br><br></div>
                 <div class="col-md-8">
                 <h2 class="text-primary">World today</h2><br>
                <p><a href="${weekly.news_link}" >${weekly.news_title}</a></p>
                <p>${weekly.news_description}</p>
                <a class="btn btn-primary" href="${weekly.news_link}">Read More <i class="fa fa-angle-right"></i></a>

                <hr>
    
    			 <hr>
    			 <h2 class="text-primary">Blog Section</h2><br>
                <p><a href="${weekly.blog_link}" >${weekly.blog_title}</a></p>
                <p>${weekly.blog_description}</p>
                <a class="btn btn-primary" href="${weekly.blog_link}">Read More <i class="fa fa-angle-right"></i></a>

                <hr>
                 <hr>
                 <h2 class="text-primary">Code of The Week</h2><br>
                <p><a href="${weekly.code_link}" >${weekly.code_title}</a></p>
                <p>${weekly.code_description}</p>
                <a class="btn btn-primary" href="${weekly.code_link}">Read More <i class="fa fa-angle-right"></i></a>

                <hr>
                 <hr>
                 <h2 class="text-primary">It Happens in Office !</h2><br>
                <p><a href="${weekly.office_link}" >${weekly.office_title}</a></p>
                <p>${weekly.office_description}</p>
                <a class="btn btn-primary" href="${weekly.office_link}">Read More <i class="fa fa-angle-right"></i></a>

                <hr>
                 <hr>
                 <h2 class="text-primary">Genius at Work</h2><br>
                <p><a href="${weekly.genius_link}" >${weekly.genius_title}</a></p>
                <p>${weekly.genius_description}</p>
                <a class="btn btn-primary" href="${weekly.genius_link}">Read More <i class="fa fa-angle-right"></i></a>

                <hr>
                <hr>
                <h2 class="text-primary">Concordance</h2><br>
                <p><a href="${weekly.word_link}" >${weekly.word_title}</a></p>
                <p>${weekly.word_description}</p>
                <a class="btn btn-primary" href="${weekly.word_link}">Read More <i class="fa fa-angle-right"></i></a>

                <hr>
                
    
    
    
    
    
    
    </div>
  
     </div>  
             <%@include file="includes/footer.jsp" %>