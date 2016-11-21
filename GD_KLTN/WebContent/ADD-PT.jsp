
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>jQuery Validate</title>	
    <link href="customDiv.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
      <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="customDiv.css" rel="stylesheet">
     <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<style type="text/css">
	label {
		display: inline-block;
		width: 150px;
	}
	input{
		display: inline-block;
		width: 400px;
	}
	label.error {
		display: inline-block;
		color:red;
		width: 200px;
	}
	h1 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
 color: green;
}
	</style>
	
	<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="jquery.validate.min.js"></script>
	
</head>
<body>
<br>
<br>
<br>
<br>
<br >
   	<div class="container">
   		<form name="loginform" method="get" accept-charset="utf-8" style="width:600px;margin: 0px auto;" id="formDemo">
   		<div class="modal-dialog" >
   						<div class="modal-content">
   							<div class="modal-body">
   								<h1>NHẬP THÔNG TIN PHÒNG TRỐNG</h1>
   									
   									<div class="form-group">
   										<label>Tên Khu</label>
   										<input class="form-control" placeholder="Nhập Tên Khu" name="TK" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>Tên Phòng</label>
   										<input class="form-control" placeholder="Nhập Tên Phòng Trống" name="TP" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>Ngày Trống</label>
   										<input class="form-control" placeholder="Nhập Theo Định Dạng (YYYY-MM-DD)" name="NT" type="text" required>
   									</div>
   								
   							</div>
   						<div class="modal-footer">
   								<input type="submit" class="btn btn-success btn-lg" onclick="myfun()" value="THÊM">
   								
   						</div>   						
   					</div>
   			</div>
   			</form>
   	</div>
 
 
<script type="text/javascript">
	function myfun(){
	$(document).ready(function()  {
 
 //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
 $("#formDemo").validate({
 rules: {
 TK: "required",
 TP: "required",
 NT: "required",
 
 
 },
 messages: {
 TK: "Vui lòng nhập tên khu",
 TP: "Vui lòng nhập tên phòng",
 NT: "Vui lòng nhập ngày trống",
 }
 });
 });
}
 </script>
 	
</body>
</html>
 