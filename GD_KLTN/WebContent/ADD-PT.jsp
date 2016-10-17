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
	<form method="get" accept-charset="utf-8" style="width:600px;margin: 0px auto;" id="formDemo">
		<fieldset>
			<legend style="color:red">THÔNG TIN PHÒNG TRỐNG</legend>
			<div>
				<label>Tên Phòng</label>
				<input id="BM" name="TP" type="text"  required>
			</div>
			<div>
				<label>Ngày Trống</label>
				<input id="HT" name="NT" type="text" required>
			</div>
			<div>
				<label>Giờ Trống</label>
				<input id="GT" name="GT" type="text" required>
			</div>
			
			<button type="submit"  onclick="myfun()">Thêm</button>
		</fieldset>
	</form>

		<script type="text/javascript">
	function myfun(){
	$(document).ready(function()  {
 
 //Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
 $("#formDemo").validate({
 rules: {
 TP: "required",
 NT: "required",
 GT:"required",
 
 
 },
 messages: {
 TP: "Vui lòng nhập tên phòng",
 NT: "Vui lòng nhập ngày trống",
 GT: "Vui lòng nhập giờ trống",
 
 
  
 }
 });
 });
}
 </script>

</body>
</html>