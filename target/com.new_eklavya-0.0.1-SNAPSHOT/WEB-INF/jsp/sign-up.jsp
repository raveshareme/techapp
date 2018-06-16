<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="includes/header.jsp" %>
 

<br>
<br>
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
        <p>Let Us be Honest with you, We Need your e-mail so that we can send you promotional mails about courses and services we launch at times.</p>
        <p>By signing up you agree to receive e-mails from us, We also give you a free subscription to our weekly Magazine <strong>Data this week</strong> </p>
        <p>along with that, you will also get a free access to Some of our video tutorials and Tons of other resources, <strong>Which will always remain FREE for you</strong></p>
         <p>Rest Assured, We Never Spam, We Hate spam as much as you do.</p>
         <br>
         <p>You are in Safe Hands, We never sell or Rent your e-mails and all your personal Informations are duly encrypted.</p>     
          <p>Let us Build a relationship, by signing Up with us.</p><p> Looking forward to providing you with all the best Training, guidance and information! </p>
          <p>Bienvenue :-),</p><p>Tech-Eklavya.</p>
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







<div class="col-md-4 col-md-offset-4">
 <div class="panel panel-default">
  <div class="panel-header">
  <h4><span class="glyphicon glyphicon-education"></span> Sign-Up</h4>
      </div>    
       <div class="panel-body">
        <div  style="padding:40px 50px;">


     
          
                  <div>
                  
                  
          <h3 class="text-primary">*All the fields are Mandatory</h3>
          <br>
          </div>
          
         <form:form modelAttribute="user" role="form">
		
			<form:errors />
		
			<div class="form-group">
            	<label><span class="glyphicon glyphicon-user"></span> Name*</label>
                <form:input type="text" path="name"  class="form-control input-sm" placeholder="Enter Name" />
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
			<input type="checkbox" onclick="myFunction()" text="primary" >  <strong>Show Password</strong>
			</div>
			<script>
			
			function myFunction() {
			    var x = document.getElementById("myInput");
			    if (x.type === "password") {
			        x.type = "text";
			    } else {
			        x.type = "password";
			    }
			}
			</script>
			
			 <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">I accept the <a href="/legal">Terms & Conditions</a></label>
  </div>
<br><br>

		google recpatcha code
                      <div align="center">
                     <div class="g-recaptcha" data-sitekey="6Lc9-CUUAAAAALT7d0ekAJJG8LuAv3pl4SuX6VKa"></div></div>
    <br />

                      <br>

           <div align="center">
         <a href="#infoModal" data-toggle="modal" data-target="#infoModal" class="btn btn-light btn-lg"><small>Why I am asked to Sign-up ?</small></small></a>
         </div>
          
            
             <div align="center">
        
                
              <button type="submit" class="btn btn-primary btn-block" id="disableAfterClick" style="font-size:20px"> Signup</button><br>
              
</div>
 <script>
		          $("#disableAfterClick").on("click", function() {
		        	    $(this).prop("disabled", true);
		        	});
          
          </script>
              
<br><br>
              
        </form:form>
        
        
        </div>
        </div>
        </div>
        
          </div>
          
           <%@include file="includes/footer.jsp" %>
