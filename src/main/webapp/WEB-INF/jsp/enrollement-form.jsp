<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="includes/header.jsp" %>
<br><br>

<div class="container">

<div class="col-md-4 col-md-offset-4">
<br><br>
<h3 class="text-primary text-center"><strong>Enrollment Form.</strong></h3>
<hr class="small">
<br><br>
<p class="text-primary text-center">All the Fields are Required to Enroll.</p>
 <form:form modelAttribute="user" role="form">
		
			<form:errors />
		
			<div class="form-group">
            	<label><span class="glyphicon glyphicon-user"></span> Name*</label>
                <form:input type="text" path="name"  class="form-control input-sm"  placeholder="Enter Name" />
                <form:errors cssClass="error" path="name" />
             </div>
			
				<div class="form-group">
		              <label><span class="glyphicon glyphicon-user"></span>  E-Mail- <small>(This will be your login ID)*</small></label>
		              <form:input type="email" path="email" class="form-control input-sm" placeholder="Enter email" />
		              <form:errors cssClass="error" path="email" />
                </div>
			
			<div class="form-group">
              <label><span class="glyphicon glyphicon-lock"></span> Password- <small>(Must be 8 characters long)*</label>
				<form:password id="myInput" path="password" class="form-control" placeholder="Password" /><br>
<!-- 				<p><strong>Check Show Password to Ensure you have entered correct password.</strong></p> -->
				<form:errors cssClass="error" path="password" />
			</div>
			<div class="form-group">
   
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">I accept the <a href="/legal">Terms & Conditions</a></label>
  </div>
  
  <br><br>
   <a class="btn btn-primary btn-block" role="button" type="submit">Proceed</a>
</div>
</form:form>




</div>
</div>

  <%@include file="includes/footer.jsp" %>