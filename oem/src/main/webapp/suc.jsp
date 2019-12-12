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

    <div class="container">

        <form:form method="POST" modelAttribute="request">
            <h2 >Create Request</h2>
            
         
               <div class="form-group">
			      <label class="control-label col-sm-2" for="email">Name:</label>
			      <div class="col-sm-10">
			        <p class="form-control-static">${name}</p>  
			      </div>
			    </div>
                       
                <div class="form-group">
			      <label class="control-label col-sm-2" for="esn">Esn No:</label>
			      <div class="col-sm-10">
			        <input type="text" class="form-control" id="esn" placeholder="Enter ESN No" name="esnNo"></input>
			      </div>
			    </div>
           

            <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
        </form:form>

    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
  </body>
</html>
