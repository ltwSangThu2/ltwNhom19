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
			<legend style="color:red">THÔNG TIN TÀI KHOẢN</legend>
			<div>
				<label>Tên Tài Khoản</label>
				<input id="HT" name="TTK" type="text"  required>
			</div>
			<div>
				<label>Họ Tên</label>
				<input id="BM" name="HT" type="text" required>
			</div>
			<div>
				<label>Giới Tính</label>
				<input id="GT" name="GT" type="text" required>
			</div>
			<div>
				<label>SDT</label>
				<input id="SDT" name="SDT" type="text" required>
			</div>
			<div>
				<label>Ngay Sinh</label>
				<input id="CM" name="NS" type="text" required>
			</div>
			<div>
				<label>Email</label>
				<input id="EM" name="EM" type="text" required>
			</div>
			<div>
				<label>Mật Khẩu</label>
				<input id="Khoa" name="MK" type="password" required>
			</div>
			<div>
				<label>Quyền</label>
				<input id="MGV" name="Q" type="text" required>
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
 TTK: "required",
 HT: "required",
 GT:"required",
 NS:"required",
 MK:"required",
 Q:"required",
  SDT: {
 required: true,
 minlength: 10,
 maxlength: 11
 },
 
 EM: {
 required: true,
 email: true
 }
 },
 messages: {
 TTK: "Vui lòng nhập tên tài khoản",
 HT: "Vui lòng nhập họ tên",
 GT: "Vui lòng nhập giới tính",
 NS: "Vui lòng nhập ngày sinh",
 MK: "Vui lòng nhập mật khẩu",
 Q: "Vui lòng nhập quyền",
 
 SDT: {
 required: "Vui lòng nhập số điện thoại",
 minlength: "Số máy quý khách vừa nhập là số không có thực",
 maxlength:"Số máy quý khách vừa nhập là số không có thực"
 },
 
 
 EM: {
 required: "Vui lòng nhập email",
 email:"Vui lòng nhập đúng định dạng"
 },
 
 }
 });
 });
}
 </script>
</body>
</html>