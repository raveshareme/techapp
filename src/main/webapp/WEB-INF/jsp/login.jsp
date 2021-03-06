
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="includes/header.jsp" %>

<br><br><br>
<div class="container">
    
    <div class="col-md-4 col-md-offset-4">
    <div class="panel panel-default">
  <div class="panel-header">
          <h4><span class="glyphicon glyphicon-education"></span> Login</h4>
      </div>    
       <div class="panel-body">
        <div  style="padding:40px 50px;">
        <c:if test="${param.error != null}">
		    <div class="alert alert-danger">
		        Invalid username and password.
		    </div>
	    </c:if>
	    
	    <c:if test="${param.logout != null}">
		    <div class="alert alert-danger">
		        You have been logged out.
		    </div>
	    </c:if>
	     <c:if test="${not empty flashMessage}">
		<div class="alert alert-danger alert-dismissable">
      	<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		 <h3> ${flashMessage} </h3>
      	</div>
      </c:if>
        
           <form:form>
            <div class="form-group form-sm">
              <label for="email"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text" class="form-control input-sm" id="username" name="username" type="email" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-lock"></span> Password</label>
              <input type="password" class="form-control input-sm" type="password" id="password" name="password" placeholder="Enter password">
            </div>
            <div class="form-group">
            <div class="checkbox">
              <label><input name="remember-me" type="checkbox" value="" checked>Remember me <small>( Uncheck If you are on shared Computer )</small></label>
            </div>
            </div>
              <button type="submit" class="btn btn-primary btn-block" id="disableAfterClick" ><span class="glyphicon glyphicon-off"></span> Login</button>
               <script>
		          $("#disableAfterClick").on("click", function() {
		        	    $(this).prop("disabled", true);
		        	});
          
          </script>
          </form:form>
         
        </div>
        </div>
        <div class="panel-footer">
        <div >
          <p><a href="/forgot-password">Forgot Password</a></p>
          <p> New to tech-eklavya? <a href="/signup" >Sign-Up.</a></p>
        </div>
        </div>
       
        </div>
        </div>
        
 </div>    
 
 
<%@include file="includes/footer.jsp" %>

