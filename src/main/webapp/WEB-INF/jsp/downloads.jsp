<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="includes/header.jsp" %>

<br><br><br>

<!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Downloads
                    <small>Updated Regularly</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">downloads</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Projects Row -->
        <div class="row">
     <c:forEach items="${resourceList}"  var="resource">       
<div class="container-fluid text-center ">

	<h2 ><a href="${resource.resourceLink}"><strong>${resource.resourceName}</strong></a></h2>


<p></p>
<p> ${resource.resourceDescription}.</p>
</div>
<hr class="small"><br><br>
   </c:forEach>     
</div>

</div>

<br>
<br>


<%@include file="includes/footer.jsp" %>