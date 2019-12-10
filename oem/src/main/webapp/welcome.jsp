<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>Welcome</title>
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
        <p class="form-control-static">${name}</p>  
      </div>
    </div>
    
    <div class="form-group">
      <label class="control-label col-sm-2" for="contact">Contact No:</label>
      <div class="col-sm-10">
          <p class="form-control-static">${contact}</p> 
      </div>
    </div>
  
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-10">
      <p class="form-control-static">${email}</p> 
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="esn">Esn No:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="esn" placeholder="Enter ESN No" name="esn">
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="issue">Category:</label>
      <div class="col-sm-10">
        <!-- <input type="text" class="form-control" id="email" placeholder="Enter Issue" name="category">
         -->
         <select class="browser-default custom-select">
		  <option selected>Open this select menu</option>
		  <option value="1">One</option>
		  <option value="2">Two</option>
		  <option value="3">Three</option>
		</select>
         
      </div>
    </div>
    
     <div class="form-group">
      <label class="control-label col-sm-2" for="details">Description:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="details" placeholder="Enter Detail" name="description">
      </div>
    </div>
    
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Create Request</button>
         <button type="submit" class="btn btn-default">Cancel</button>
           <button type="submit" class="btn btn-default">Reset</button>
             <button type="submit" class="btn btn-default">Attach Document</button>
         
      </div>
    </div>
    <br><br>
     <div class="form-group">    
    <button class="btn btn-info" onclick="myFunction()">History</button>
    </div>
  </form>
</div>


<div class="container tab-content" id="myDIV"  ><!-- style="display:none" -->
  <h2>My Requests </h2>

<h2>Dynamic Tabs</h2>
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#new">New</a></li>
    <li><a data-toggle="tab" href="#open">Open</a></li>
    <li><a data-toggle="tab" href="#closed">Closed</a></li>
   
  </ul>
  
   <div class="tab-pane fade in active"  id ="new"  >  
  <table class="table table-bordered">
    <thead>
    
    <th>New Request</th>
   
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
      
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
    </tbody>
  </table>
</div>

<div class="tab-pane fade " id ="open"  >  
  <table class="table table-bordered">
    <thead>
    
    <th>Open Request</th>
   
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
      
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
<div class="tab-pane fade"  id ="closed"  >  
  <table class="table table-bordered">
    <thead>
    
    <th>Closed Request</th>
   
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
      
    </thead>
    <tbody>
      <tr>
        <td>John</td>
        <td>Doe</td>
        <td>john@example.com</td>
      </tr>
    </tbody>
  </table>
</div>
</div>    


<script>
/* var app = angular.module('myApp', []);
app.controller('formCtrl', function($scope) {
    $scope.firstname = ${username};
});
 */
function myFunction() {
	  var x = document.getElementById("myDIV");
	 
	  if (x.style.display === "none") {
	    x.style.display = "block";
	  } else {
	    x.style.display = "none";
	  }
	}

</script>
  
  
</body>
</html>
