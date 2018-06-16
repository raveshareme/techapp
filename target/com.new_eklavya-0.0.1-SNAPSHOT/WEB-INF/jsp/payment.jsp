<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="includes/header.jsp" %>
<br><br><br>

<div class="cotainer text-center">

<h3 class="text-primary"><strong>Thank you ${name} for Enrollment.</strong></h3>

<h4 class="text-primary"><strong>You are enrolling in a Paid course.</strong></h4>
<h4 class="text-primary"><strong>Pay via Credit / Debit Card.</strong></h4>
<br><br>
<h4 class="text-primary"><strong>Or</strong></h4>

<br><br>

 <h4 class="text-primary"><strong>Pay with PayPal.</strong></h4>
 
 
 <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="JBL8WDUZQ9GXC">
<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
</form>
 
 
 
          
<!--           <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top"> -->
<!-- <input type="hidden" name="cmd" value="_s-xclick"> -->
<!-- <input type="hidden" name="hosted_button_id" value="L9XRPAUMCGERG"> -->
<!-- <input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_paynow_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online!"> -->
<!-- <img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1"> -->
<!-- </form> -->


</div>

  <%@include file="includes/footer.jsp" %>