  <%@include file="includes/header.jsp" %>
  
  
   <!-- Page Content -->
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Data this Week
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
            
                
                

                		   <div class="row">
                		    <c:forEach items="${issues }" var="issue">
                		   
            <div class="col-md-2">
                     <p><i class="fa fa-book fa-4x"></i></p><P>Issue ${issue.issue} </P></div><div class="col-md-12"><p><c:out value="${issue.description}" /></p><a href="/weekly/${issue.issue}" class="btn btn-primary btn-lg">Read Now</a> <div><br><br></div></div>
        
        </c:forEach>
       
        </div> 
        

                		    </div>

                	
                	</div>
                
              
   
   
   

        <hr>

        <!-- Pager -->
        <div class="container">
        <div class="row">
            <ul class="pager">
                <li class="previous"><a href="#">&larr; Older</a>
                </li>
                <li class="next"><a href="#">Newer &rarr;</a>
                </li>
            </ul>
        </div>
        <!-- /.row -->
        </div>

        <hr>

       

       </div>

       
             <%@include file="includes/footer.jsp" %>