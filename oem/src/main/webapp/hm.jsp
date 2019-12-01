<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Original Equipment Manufacturer</title>

<meta charset="utf-8">
      <title>Log in with your account</title>

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
  <a href="/login"><i class="fa fa-fw fa-user"></i> Login</a>
  <a href="/registration"><i class="fa fa-fw fa-user"></i> Registration</a>
</div>

<div>
        <div>
            <h1>Another page</h1>
            <h2>Hello ${message}</h2>
             
            Click on this <strong><a href="/login">link</a></strong> to visit previous page.
        </div>
    </div>
</body>
</html>