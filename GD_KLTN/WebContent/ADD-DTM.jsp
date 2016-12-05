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
   		<form action="ThemDeTai" name="loginform" method="post"  style="width:600px;margin: 0px auto;" id="formDemo">
   		<div class="modal-dialog" >
   						<div class="modal-content">
   							<div class="modal-body">
   								<h1>NHẬP THÔNG TIN ĐỀ TÀI</h1>
   									
   									<div class="form-group">
   										<label>ID Đề Tài</label>
   										<input class="form-control" placeholder="Nhập ID Đề Tài" name="IDDT" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>Tên Đề Tài</label>
   										<input class="form-control" placeholder="Nhập Tên Đề Tài" name="TDT" type="text"  required>
   									</div>
   									<div class="form-group">
   										<label>GVHD</label>
   										<input class="form-control" placeholder="Nhập Tên GVHD" name="GVHD" type="text" >
   									</div>
   									<div class="form-group">
   										<label>Số Lượng Sinh Viên</label>
   										<input class="form-control" placeholder="Nhập Số Lượng Sinh Viên" name="SLSV" type="text" required>
   									</div>
   									<div class="form-group">
   										<label>Mô Tả</label>
   										<input class="form-control" placeholder="Nhập Mô Tả" name="MT" type="text" required>
   									</div>
   									<div class="form-group">
   										<label>Sinh Viên Thực Hiện</label>
   										<input class="form-control" placeholder="Nhập Sinh Viên Thực Hiện" name="SVTH" type="text" >
   									</div>
   									<div class="form-group">
   										<label>Điểm</label>
   										<input class="form-control" placeholder="Nhập Điểm" name="DIEM" type="text" required>
   									</div>
   									<div class="form-group">
   										<label>Nhận Xét</label>
   										<input class="form-control" placeholder="Nhập Nhận Xét" name="NX" type="text" required>
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
IDDT: "required",
 TDT: "required",
 SLSV: "required",
 MT: "required",
  DIEM: "required",
 NX: "required",
 
 
 },
 messages: {
IDDT: "Vui lòng nhập ID Đề Tài",
 TDT: "Vui lòng nhập tên đề tài",
 GVHD: "Vui lòng nhập tên GVHD",
 SLSV: "Vui lòng nhập số lượng SV",
 NX: "Vui lòng nhận xét",
 MT: "Vui lòng nhập mô tả",
 SVTH: "Vui lòng nhập sinh viên thực hiện",
 DIEM: "Vui lòng nhập điểm",
 }
 });
 });
}
 </script>
 	
</body>
</html>
 
 