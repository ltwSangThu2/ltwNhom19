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
   	<div class="container">
   		<form name="loginform" method="get" accept-charset="utf-8" style="width:600px;margin: 0px auto;" id="formDemo">
   		<div class="modal-dialog" >
   						<div class="modal-content">
   							<div class="modal-body">
   								<h1>NHẬP THÔNG TIN GIÁO VIÊN</h1>
   									
   									<div class="form-group">
   										<label>Họ Tên</label>
   										<input class="form-control" placeholder="Nhập Họ Tên" name="HT" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>Chuyên ngành</label>
   										<input class="form-control" placeholder="Nhập Chuyên Ngành" name="CN" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>Bộ Môn</label>
   										<input class="form-control" placeholder="Nhập Bộ Môn" name="BM" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>Giới Tính</label>
   										<input class="form-control" placeholder="Nhập Giới Tính" name="GT" type="text" required>
   									</div>
   									<div class="form-group">
   										<label>Ngay Sinh</label>
   										<input class="form-control" placeholder="Nhập Theo Định Dạng (YYYY-MM-DD)" name="NS" type="text" required>
   									</div>
   									<div class="form-group">
   										<label>SĐT</label>
   										<input class="form-control" placeholder="Nhập SĐT" name="SDT" type="text" required>
   									</div>
   									<div class="form-group">
   										<label>Email</label>
   										<input class="form-control" placeholder="Nhập Email" name="EM" type="text" required>
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
 HT: "required",
 CN: "required",
 BM: "required",
 GT: "required",
 NS: "required",
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
 HT: "Vui lòng nhập họ tên",
 CN: "Vui lòng nhập chuyên ngành",
 BM: "Vui lòng nhập bộ môn",
 GT: "Vui lòng nhập giới tính",
 NS: "Vui lòng nhập ngày sinh",
 SDT: {
	 required: "Vui lòng nhập số điện thoại",
	 minlength: "Số máy quý khách vừa nhập là số không có thực",
	 maxlength:"Số máy quý khách vừa nhập là số không có thực"
	 },
	 
	 EM: {
		 required: "Vui lòng nhập email",
		 email:"Vui lòng nhập đúng định dạng"
	 }
 }
 });
 });
}
 </script>
 	
</body>
</html>