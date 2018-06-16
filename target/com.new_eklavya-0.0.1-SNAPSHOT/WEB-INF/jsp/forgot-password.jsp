
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="includes/header.jsp" %>

<br><br><br>
<!-- Modal starts here -->
		  
		  <style>
  .modal-header, h4, .close {
      background-color: #337ab7;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
<!-- Modal -->
<div class="container">
  <div class="modal fade" id="infoModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-education"></span> Tech-eklavya.com</h4>

        </div>
        <div class="modal-body" style="padding:40px 50px;">
        <p>Operation Successful!</p>
        <p> Please check your e-mail to reset your password.</p>
        <p> If you don't find the e-mail, check the bulk folder or mail to subscription@tech-eklavya.com</p>
        
          </div>
        </div>
        <div class="modal-footer">
         
           
        </div>
      </div>
      
    </div>
  </div> 
</div>
 
<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#infoModal").modal();
    });
});
</script>

		  
		  
		   <!-- Modal ends here -->  


<div class="container">
    
    <div class="col-md-4 col-md-offset-4">
    <div class="panel panel-default">
  <div class="panel-header">
          <h4><span class="glyphicon glyphicon-user"></span> Forgot Password</h4>
      </div>    
       <div class="panel-body">
        <div  style="padding:40px 50px;">
        <c:if test="${param.error != null}">
		    <div class="alert alert-danger">
		        Invalid e-mail.
		    </div>
	    </c:if>
	     <h3 class="text-primary">Enter e-mail to Reset Password.</h3><br><br>
	    
           <form:form modelAttribute="forgotPasswordCommand" role="form">
		
			<form:errors />
		
			<div class="form-group">
				<form:label path="email">Email address</form:label>
				<form:input path="email" type="email" class="form-control" placeholder="Enter email" />
				<form:errors cssClass="error" path="email" />
				
			</div>
			
			<button type="submit" href="#infoModal" data-toggle="modal" data-target="#infoModal"  class="btn btn-primary btn-block">Reset password</button>
			
		</form:form>
        </div>
        </div>
        <div class="panel-footer">
        <div >
          
          <p>  <a href="/" >Back to Home Page.</a></p>
        </div>
        </div>
       
        </div>
        
        <div class="Container-fluid">
             <c:if test="${not empty flashMessage}">
		<div class="alert alert-danger alert-dismissable">
      	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		 <h3> ${flashMessage} </h3>
      	</div>
      </c:if>
      </div>
        </div>
        
 </div>    
 
 
<%@include file="includes/footer.jsp" %>

		  