<%@include file="includes/header.jsp"%>

<br><br><br>
<div class="container">
    
    <div class="col-md-4 col-md-offset-4">
    <div class="panel panel-default">
  <div class="panel-header">
          <h4><span class="glyphicon glyphicon-user"></span> Reset Password</h4>
      </div>    
       <div class="panel-body">
        <div  style="padding:40px 50px;">
	
		<form:form modelAttribute="resetPasswordCommand" role="form">
		
			<form:errors />
			
			<div class="form-group">
				<form:label path="password">Type new password</form:label>
				<form:password path="password" class="form-control" placeholder="Password" />
				<form:errors cssClass="error" path="password" />
			</div>
			
			<div class="form-group">
				<form:label path="retypePassword">Retype new password</form:label>
				<form:password path="retypePassword" class="form-control" placeholder="Retype password" />
				<form:errors cssClass="error" path="retypePassword" />
			</div>
			
			<button type="submit" class="btn btn-primary btn-block">Submit</button>
			
		</form:form>
	</div>
	</div>
	</div>
	</div>
	</div>
	

<%@include file="includes/footer.jsp"%>
