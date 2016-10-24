<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>jQuery Validate</title>	
	<link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
 	 	
    <link href="customDiv.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	<style type="text/css">
	label {
		display: inline-block;
		width: 150px;
	}
	input[type="text"], input[type="password"] {
		display: inline-block;
		width: 200px;
	}
	label.error {
		display: inline-block;
		color:red;
		width: 200px;
	}
	</style>
	
	<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="jquery.validate.min.js"></script>
	
</head>
<body>
			<div class="container"> 
			<br></br>
   			<br></br>
  				<form class="form-inline" id="formDemo" method="get">
   					 <div class="form-group">   					 	  
					      <label for="HD">Tên Hội Đồng:</label>
					      <input class="form-control" type="text" name="HD" placeholder="Nhập tên hội đồng" required>
    				</div>   				
    				<button type="submit" class="btn btn-default" onclick="myfun()">OK</button>
  				</form>
			</div>			
	<p id="demo"></p>
	<script type="text/javascript">
	{
	$(document).ready(function()  {
 
 //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
 $("#formDemo").validate({
 rules: {
 HD: "required", },
 messages: {
 HD: "Vui lòng nhập tên hội đồng",
  }
 });
 });
}
 </script>
</body>
</html>