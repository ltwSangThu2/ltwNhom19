<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Login Page</title>	
    <link href="customDiv.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="customDiv.css" rel="stylesheet">
    <style type="text/css">
	h1 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
}
	</style>
</head>
<body>
	<br />
   	<div class="container">
   		<form name="loginform" method="post" action="loginbean.jsp" method="post">
   		<div class="modal-dialog" >
   						<div class="modal-content">
   							<div class="modal-body">
   								<h1>Login To Your Account</h1>
   								
   									<div class="form-group">
   										<label for="inputUserName">Username</label>
   										<input class="form-control" placeholder="Username" type="text" name="name">
   									</div>
   									<div class="form-group">
   										<label for="inputPassword">Password</label>
   										<input class="form-control" placeholder="Password" type="password" name="password">
   									</div>
   								
   							</div>
   						<div class="modal-footer">
   								<input type="submit" class="btn btn-success btn-lg" value="LOGIN">
   								
   						</div>   						
   					</div>
   			</div>
   			</form>
   	</div>
   				
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>

</body>
</html>