<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
   
   <div class="row">
   		<div class="col-xs-12">
   		<ul class="nav nav-tabs">
   			<li >
   				<a href="#trangchuTab" data-toggle="tab">Trang chủ</a>
   			</li>
   			<li>
   				<a href="#giaovienTab" data-toggle="tab">Danh Sách Giao Viên</a>
   			</li>
   			<li class="active">
   				<a href="#saplichTab" data-toggle="tab">Sắp Lịch</a>
   			</li>
   			
   		</ul>
   		</div>
   	</div>
   	<div class="tab-content">
   		<div id="saplichTab" class="tab-pane fade ">
   			    	   
    	   <div class="container">
 			 <h3 align="center">SẮP LỊCH KHÓA LUẬN TỐT NGHIỆP</h3>
  				<form >
    				<div class="form-group">
      					<label for="KHOA">KHOA:</label>
     						 <input list="KHOA" class="form-control" placeholder="Chọn khoa" >
     						 	<datalist id="KHOA">
								    <option value="CÔNG NGHỆ THÔNG TIN">
								    <option value="CÔNG NGHỆ MAY-THỜI TRANG">
								    <option value="CƠ KHÍ MÁY">
								    <option value="ĐIỆN-ĐIỆN TỬ">
								    <option value="KINH TẾ">
								    <option value="XÂY DỰNG">
								    <option value="SƯ PHẠM ANH">
			  					</datalist>
			  				
   					 </div>
  					 <div class="form-group">
  						 <label for="NGÀNH">CHUYÊN NGÀNH</label>
      						<input list="NGÀNH" class="form-control" placeholder="Chọn chuyên ngành" >
      						 	<datalist id="NGÀNH">
								    <option value="HỆ THỐNG THÔNG TIN">
								    <option value="MẠNG MÁY TÍNH">
								    <option value="CÔNG NGHỆ PHẦN MỀM">
			 					</datalist>
    				</div>
  					<div class="btn btn-lg ">
    					<a href="#" onclick="loadTaoHoiDong()" class="btn btn-default">TẠO HỘI ĐỒNG</a>
    				</div>
    				<div class="btn btn-lg ">
    					<a href="#" onclick="loadSuaHoiDong()" class="btn btn-default">XEM HỘI ĐỒNG</a>
    				</div>
  				</form>
		</div>
		<BR></BR>
		
		


   
   		</div>
   		<div id="giaovienTab" class="tab-pane fade"></div>   		
   		<div id="trangchuTab" class="tab-pane fade"></div>
   </div>
   
   
   
    <script language = "javascript">					
				function loadTaoHoiDong() {
					$("#saplichTab").load("TAO-HOIDONG.jsp");
					    };		
					
</script>
    <script language = "javascript">					
				function loadSuaHoiDong() {
					$("#saplichTab").load("SUA-HOIDONG.jsp");
					    };		
					
</script>
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  </body>
</html>
