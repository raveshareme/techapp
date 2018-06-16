<%@include file="includes/admin_header.jsp" %>
  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    
                    <li class="active">
                        <a href="<c:url value="/admin/magazine/new" />"><i class="fa fa-fw fa-edit"></i> New Edition</a>
                    </li>


                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>
        <div>
       
      <br>
      </div>
        <div id="page-wrapper">

            <div class="container-fluid">
             

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Magazine Management - to be updated Weekly
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Data This week</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> New Issue
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">



<div class="container">
                    
	
        <div class="control-group col-md-8" id="fields">
        
        
      
        
        
        
            <div class="controls"> 
            <div class="panel panel-default">
  <div class="panel-body">
   
  
   
                <form:form role="form" modelAttribute="publish">
                 
                 
                 <div class="well">
                    <div class="form-group">
                              <label>Issue</label>
                             
                          

							 
<!--                               	<input type="text" id="issue" name="issue" class="form-control" placeholder="Enter Issue Name"> -->
                        
                         			<input type="text" id="issue" name="issue" class="form-control" placeholder="Enter Issue Name">
                       
                       
                    </div>
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="description" name="description" class="form-control" rows="5" placeholder="Enter Issue description"></textarea>
                     	
                        
                       
                    </div>
                    </div>
                    <div class="well">
                    <h3 class="text-danger" >From The News Desk</h3><br>
                     <div class="form-group">
                              <label> Link</label>
                              <input type="text" id="news_link" name="news_link" class="form-control" placeholder="Enter Article Link">
                        
                       
                    </div>
                    
                    
                    <div class="form-group">
                              <label>Title</label>
                              <input type="text" id="news_title" name="news_title" class="form-control" placeholder="Enter Article title">
                        
                    </div>
                   
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="news_description" name="news_description" class="form-control" rows="5" placeholder="Enter Article description"></textarea>
                     	
                        
                       
                    </div>
                
                    </div>
                    
                    
                    <div class="well">
                    <h3 class="text-danger" >Blog Section</h3><br>
                     <div class="form-group">
                              <label> Link</label>
                              <input type="text" id="blog_link" name="blog_link" class="form-control" placeholder="Enter Article Link">
                        
                      
                    </div>
                    
                    
                    <div class="form-group">
                              <label>Title</label>
                              <input type="text" id="blog_title" name="blog_title" class="form-control" placeholder="Enter Article title">
                        <form:errors cssClass="error" path="blog_title" />
                    </div>
                   
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="blog_description" name="blog_description" class="form-control" rows="5" placeholder="Enter Article description"></textarea>
                     	
                        
                       
                    </div>
                
                    </div>
                    
                     <div class="well">
                    <h3 class="text-danger" >Code of the Week</h3><br>
                     <div class="form-group">
                              <label> Link</label>
                              <input type="text" id="code_link" name="code_link" class="form-control" placeholder="Enter Article Link">
                        
                      
                    </div>
                    
                    
                    <div class="form-group">
                              <label>Title</label>
                              <input type="text" id="code_title" name="code_title" class="form-control" placeholder="Enter Article title">
                        
                    </div>
                   
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="code_description" name="code_description" class="form-control" rows="5" placeholder="Enter Article description"></textarea>
                     	
                        
                       
                    </div>
                
                    </div>
                    
                    
                      
                     <div class="well">
                    <h3 class="text-danger" >It Happens in Office</h3><br>
                     <div class="form-group">
                              <label> Link</label>
                              <input type="text" id="office_link" name="office_link" class="form-control" placeholder="Enter Article Link">
                        
                       
                    </div>
                    
                    
                    <div class="form-group">
                              <label>Title</label>
                              <input type="text" id="office_title" name="office_title" class="form-control" placeholder="Enter Article title">
                        
                    </div>
                   
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="office_description" name="office_description" class="form-control" rows="5" placeholder="Enter Article description"></textarea>
                     	
                        
                       
                    </div>
                
                    </div>
                     
                    
                       
                     <div class="well">
                    <h3 class="text-danger" >Genius at Work</h3><br>
                     <div class="form-group">
                              <label> Link</label>
                              <input type="text" id="genius_link" name="genius_link" class="form-control" placeholder="Enter Article Link">
                        
                      
                    </div>
                    
                    
                    <div class="form-group">
                              <label>Title</label>
                              <input type="text" id="genius_title" name="genius_title" class="form-control" placeholder="Enter Article title">
                        
                    </div>
                   
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="genius_description" name="genius_description" class="form-control" rows="5" placeholder="Enter Article description"></textarea>
                     	
                        
                       
                    </div>
                
                    </div>
                     
                    
                     <div class="well">
                    <h3 class="text-danger" >Concordance</h3><br>
                     <div class="form-group">
                              <label> Link</label>
                              <input type="text" id="word_link" name="word_link" class="form-control" placeholder="Enter Article Link">
                        
                      
                    </div>
                    
                    
                    <div class="form-group">
                              <label>Title</label>
                              <input type="text" id="word_title" name="word_title" class="form-control" placeholder="Enter Article title">
                       
                    </div>
                   
                     <div class="form-group">
                              <label>Description</label>
                              <textarea id="word_description" name="word_description" class="form-control" rows="5" placeholder="Enter Article description"></textarea>
                     	
                        
                       
                    </div>
                
                    </div>
                     
                     
				<button type="submit" class="btn btn-success ">Save </button> 
                            
                            
                            
                            <br> <br> <br>
                          
                          
              
                     </form:form>
                     
                     
                    
                     
                     
                     </div>
</div>
                     
                     </div>
                     
                     
                      <br>
                      <br>
			 <br>
			 
			  
           
        </div>
        

</div>


                    </div>
                    
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->
            

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    
    <%@include file="includes/admin_footer.jsp" %>