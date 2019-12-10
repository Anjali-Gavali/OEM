<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>

      <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
      <link href="${contextPath}/resources/css/Myapp.css" rel="stylesheet">
      
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
  </head>

  <body>

<!-- Navigation Bar -->

<div class="navbar">
  <a class="active" href="/hm"><i class="fa fa-fw fa-home"></i> Home</a> 
  <a href="#"><i class="fa fa-fw fa-search"></i> Search</a> 
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a> 
  <a style="float:right" href="/login"><i class="fa fa-fw fa-user"></i> Login</a>
  <a style="float:right" href="/registration"><i class="fa fa-fw fa-user"></i> Registration</a>
</div>

    <div class="container">

        <form:form method="POST" modelAttribute="userForm" class="form-signin">
            <h2 class="form-signin-heading">Create your account</h2>
            <spring:bind path="username">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="username" class="form-control" placeholder="Username"
                                autofocus="true"></form:input>
                    <form:errors path="username"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="password">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="password" class="form-control" placeholder="Password"></form:input>
                    <form:errors path="password"></form:errors>
                </div>
            </spring:bind>

            <spring:bind path="passwordConfirm">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="password" path="passwordConfirm" class="form-control"
                                placeholder="Confirm your password"></form:input>
                    <form:errors path="passwordConfirm"></form:errors>
                </div>
            </spring:bind>
            
            <spring:bind path="email">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="email" class="form-control" placeholder="Email"
                                ></form:input>
                    <form:errors path="email"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="contact">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="contact" class="form-control" placeholder="Contact Number"
                                ></form:input>
                    <form:errors path="contact"></form:errors>
                </div>
            </spring:bind>
            <spring:bind path="address">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                    <form:input type="text" path="address" class="form-control" placeholder="Address"
                                ></form:input>
                    <form:errors path="address"></form:errors>
                </div>
            </spring:bind>
            

            <spring:bind path="role">
                <div class="form-group ${status.error ? 'has-error' : ''}">
                   <%--  <form:input type="text" path="role" class="form-control" placeholder="Role"
                                ></form:input> --%>
                                
           <label class="control-label col-sm-2" for="role">Role:</label>
      <div class="col-sm-10">
       
         <select class="browser-default custom-select">
		  <option selected>Select Role</option>
		  <option value="1">ROLE_USER</option>
		  <option value="2">ROLE_ADMIN</option>
		</select>
         
      </div>      
                   
                </div>
            </spring:bind>
            
            
             <!-- <div class="form-group">
      <label class="control-label col-sm-2" for="role">Role:</label>
      <div class="col-sm-10">
       
         <select class="browser-default custom-select">
		  <option selected>Select Role</option>
		  <option value="1">ROLE_USER</option>
		  <option value="2">ROLE_ADMIN</option>
		</select>
         
      </div>
    </div> -->

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>
