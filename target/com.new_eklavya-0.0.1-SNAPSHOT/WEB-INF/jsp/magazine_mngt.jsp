<%@include file="includes/admin_header.jsp" %>
  <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="<c:url value="/admin"/>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                    </li>
                    <li class="active">
                        <a href="<c:url value="/admin/magazine"/>"><i class="fa fa-fw fa-dashboard"></i> TE Weekly</a>
                    </li>
                    
                    <li>
                        <a href="<c:url value="/admin/magazine/new" />"><i class="fa fa-fw fa-edit"></i> New Edition</a>
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
                            Magazine Management - to be updated Weekly
                        </h1>
                        <ol class="breadcrumb">
                            <li>
                                <i class="fa fa-dashboard"></i>  <a href="index.html">Data This week</a>
                            </li>
                            <li class="active">
                                <i class="fa fa-edit"></i> All the Issues
                            </li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->

                <div class="row">
                    <div class="col-lg-8">



<div class="container-fluid">
                    <div class="panel panel-default">
  <div class="panel-body">
   <c:forEach items="${weeklyList}" var="magazine" >
    <ul class="list-group">
  <li class="list-group-item">${magazine.issue}</li>
 
</ul> 
   </c:forEach>
  </div>
</div>
	
        <div class="control-group col-md-8" id="fields">
        
        
        
        
<!--             <div class="controls">  -->
<%--                 <form:form role="form" modelAttribute="publish"> --%>
<%--                  <form:errors /> --%>
<!--                                      <div class="form-group"> -->
                    
<%--                         <form:input class="form-control col-md-4" path="link" placeholder="Enter Article Link" name="link"  /> --%>
<%--                        <form:errors cssClass="error" path="link" /> --%>
                       
<!--                     </div> -->
<!--                     <div class="form-group"> -->
                    	
<%--                         <form:input class="form-control col-md-4" path="title" placeholder="Enter Article Title" name="title"  /> --%>
<%--                         <form:errors cssClass="error" path="title" /> --%>
<!--                     </div> -->
<!--                     <br> -->
<!--                     <br> -->
<!--                     <br> -->
<!--                     <div class="form-group"> -->
<%--                     <form:label path="description">Article Description</form:label> --%>
<%--                      	<form:errors cssClass="error" path="description" /> --%>
<%--                         <form:textarea id="description" path="description" name="description" class="form-control" rows="7" ></form:textarea> --%>
                       
<!--                     </div> -->
                
                    
<!-- 				<button type="submit" class="btn btn-success ">Save </button>  -->
                            
                            
                            
<!--                             <br> <br> <br> -->
                          
                          
              
<%--                      </form:form> --%>
<!--                      </div> -->
                     
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