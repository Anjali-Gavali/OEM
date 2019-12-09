<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
    
</head>
<body>
  
 <!--  <div ng-app="myApp" ng-controller="formCtrl">
  <form>
    First Name: <input type="text" ng-model="firstname"><br>
    Contact No: <input type="text" ng-model="firstname"><br>
    Email: <input type="text" ng-model="firstname"><br>
    ESN No: <input type="text" ng-model="firstname"><br>
    Issue : <input type="text" ng-model="firstname"><br>
    Details : <input type="text" ng-model="firstname"><br>
  </form>
</div>
 -->

<div class="container" ng-app="myApp" ng-controller="formCtrl">
  <h2>Horizontal form</h2>
  <form class="form-horizontal" action="/action_page.php">
  
  <div class="form-group">
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" ng-model="firstname" class="form-control" id="name" placeholder="Enter Name" name="name">
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="contact">Contact No:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="contact" placeholder="Enter email" name="contact">
      </div>
    </div>
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="esn">Esn No:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="esn" placeholder="Enter ESN No" name="esn">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="issue">Issue:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter Issue" name="issue">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="details">Details:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="details" placeholder="Enter Detail" name="detail">
      </div>
    </div>
    
   
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>


<script>
var app = angular.module('myApp', []);
app.controller('formCtrl', function($scope) {
    $scope.firstname = "John";
});
</script>
  
  
</body>
</html>
