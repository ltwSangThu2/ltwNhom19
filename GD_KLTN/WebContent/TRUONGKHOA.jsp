<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
 <sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/kltn" 
		user="root" 
		password="1234"/>
	<sql:query var="items" sql="SELECT * FROM taikhoan,role WHERE taikhoan.IDRole = role.IDRole and RoleName='GiaoVien'"/>  
	<sql:query var="items2" sql="SELECT * FROM phongtrong"/>
	<sql:query var="items3" sql="SELECT TenDT,MoTa,FileBaoCao,SoLuongSV,Diem,NhanXet,T.SV ,S.GVHD  FROM detai ,baocao ,(select HoTen AS SV,IDSV FROM taikhoan,baocao WHERE baocao.IDSV=taikhoan.IDTK) AS T,(select HoTen AS GVHD,IDGV FROM taikhoan,baocao WHERE baocao.IDGV=taikhoan.IDTK) AS S WHERE detai.IDDT=baocao.IDDT and  baocao.IDSV=T.IDSV and baocao.IDGV=S.IDGV "/>   
	<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TRUONG KHOA</title>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
     <link href="customDiv.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    	<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
    	
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
	
<script type="text/javascript">

function slideSwitch() {
    var $active = $('#slideshow IMG.active');

    if ( $active.length == 0 ) $active = $('#slideshow IMG:last');

    // use this to pull the images in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    // uncomment the 3 lines below to pull the images in random order
    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 5000 );
});

</script>
 
 <style type="text/css">
	label {
		display: inline-block;
		width: 300px;
	}
	select {
		width: 450px;
	}
	label.error {
		display: inline-block;
		color:red;
		width: 200px;
	}
	body {
    background-color: whitesmoke;
}
	</style>
  </head>
  <body>
   
   <div class="row">
   		<div class="col-xs-12">
   		<ul class="nav nav-tabs">
   			<li>
   				<a href="LogoutServlet">Đăng Xuất</a>
   			</li>
   			<li>
   				<a href="#giaovienTab" data-toggle="tab">Danh Sách Giao Viên</a>
   			</li>
   			<li>
   				<a href="#taohoidongTab" data-toggle="tab">Tạo Hội Đồng</a>
   			</li>
   			<li>
   				<a href="#saplichTab" data-toggle="tab">Sắp Lịch</a>
   			</li>
   			<li>
   				<a href="#detaiTab" data-toggle="tab">Danh Sách Đề Tài</a>
   			</li>
   			<li>
   				<a href="#phongTab" data-toggle="tab">Danh Sách Phòng Trống</a>
   			</li>
   		</ul>
   		</div>
   	</div>
   	<div class="tab-content">
   		<div id="trangchuTab" class="tab-pane fade"></div>
   		<div id="taohoidongTab" class="tab-pane fade">
   			<div class="container">
			<br>
			<br>
				<form action="ThemHoiDong" name="hoidongform" method="post"  style="width:600px;margin: 0px auto;" id="formDemo" >
					<div class="form-group"  >
						<label>TÊN HỘI ĐỒNG</label>
						<input class="form-control" type="text" id="THD" name="THD" class="form-control" placeholder="Nhập tên hội đồng" required>
					</div>
					<div class="form-group"  >
						<label>CHUYÊN NGÀNH</label>
						<input class="form-control" list="DSCN" name="CN" class="form-control" placeholder="Chọn chuyên ngành" required>
						<datalist id="DSCN">
							<option value="Hệ Thống Thông Tin"></option>
							<option value="Công Nghệ Phần Mềm"></option>
							<option value="Mạng Máy Tính"></option>
						</datalist>
					</div>
					<div class="form-group">
						<label>NGÀY BẢO VỆ KHÓA LUẬN</label>
						<input type="text" list="DSNT" name="NBV" class="form-control" placeholder="Chọn ngày bảo vệ khóa luận" >
     					<datalist id="DSNT">
						 	<c:forEach items="${items2.rows}"  var="row">	
								<option value="${row.NgayTrong}" >				
							</c:forEach>		    
			  			</datalist>
					</div>
					<div class="form-group">
						<label>PHÒNG BẢO VỆ KHÓA LUẬN</label>
						<input type="text" list="DSPT" name="TP" class="form-control" placeholder="Chọn phòng " >
     					<datalist id="DSPT">
							<c:forEach items="${items2.rows}"  var="row">	
								<option value="${row.TenP}">				
							</c:forEach>	
			  		</datalist>
					</div>
					<br>
					<br>
					<div class="pull-right">
   						<input type="submit" class="btn btn-warning btn-lg"  value="THÊM">
   								
   					</div> 
				</form>
			</div>	
   		</div>
   		<div id="saplichTab" class="tab-pane fade ">
   		<div class="container">
    	   <br>
    	   <br>
    	   <br>
    	   <h3 align="center"><span align="center" style= "color:blue;font-weight:bold " >SẮP LỊCH KHÓA LUẬN TỐT NGHIỆP</span></h3>
  				<form>
    				<div class="form-group">
      					<label for="KHOA">KHOA</label>
     						 <input list="KHOA" class="form-control"  placeholder="Chọn khoa" >
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
    					<a href="SaplichServlet" class="btn btn-info">SẮP LỊCH KHÓA LUẬN</a>
    				</div>
    				<div class="btn btn-lg ">
    					<a href="#" onclick="loadSuaHoiDong()" class="btn btn-warning">XEM HỘI ĐỒNG</a>
    				</div>	
  				</form>
			</div>
   		</div>
   		<div id="giaovienTab" class="tab-pane fade">
   		 <div class="btn-group btn-group-lg">
    	<button class="btn btn-default">Khoa</button>
    	<button class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">Công Nghê Thông Tin</a></li>
			<li><a href="#">Điện-Điện Tử</a></li>
			<li><a href="#">Cơ Khí Chế Tạo Máy</a></li>
			<li><a href="#">Xây Dựng</a></li>
			<li><a href="#">Công Nghệ May Và Thiết Kế Thời Trang</a></li>
		</ul>
    	<br></br>
    	<br></br>
    </div>
   			<div class="panel panel-default">
   		<table class="table table-bordered table-center">
   			<thead>
   				<tr class="success">
	       			<th>MÃ GV</th>
	                 <th>HỌ VÀ TÊN</th>
	                 <th>CHUYÊN NGÀNH</th>
	                 <th>BỘ MÔN</th>	                 
	                 <th>NGÀY SINH</th>
	                 <th>GIỚI TÍNH</th>
	                 <th>SỐ ĐIỆN THOẠI</th>
	                 <th>EMAIL</th>
	            </tr>
            </thead>
            <tbody>
	           <c:forEach items="${items.rows}" var="row">			
								<tr>		
										<td>${row.IDTK}</td>	
										<td>${row.HoTen}</td>	
										<td>${row.ChuyenNganh}</td>	
										<td>${row.BoMon}</td>	
										<td>${row.NgaySinh}</td>
										<td>${row.GioiTinh}</td>	
										<td>${row.SDT}</td>	
										<td>${row.Email}</td>		
								</tr>							
							</c:forEach>
        	</tbody>
   		</table>
   		
   	</div><ul class="pagination pull-right">
    	<li><a href="#">&laquo;</a></li>
    	<li><a href="#">1</a></li>
    	<li><a href="#">2</a></li>
    	<li><a href="#">3</a></li>
    	<li><a href="#">4</a></li>
    	<li><a href="#">5</a></li>
    	<li><a href="#">&raquo;</a></li>
    </ul>
    <br></br>
     <br></br>
        <div class="btn-toolbar pull-right">
    	<div class="btn btn-lg">
    		<a href="#" class="btn btn-warning">Lọc</a>
    	</div>
   		<div class="btn btn-lg">
	    	<a href="#" class="btn btn-info">Lưu</a>
    	</div>
    	<div class="btn btn-lg">
    		<a href="#" onclick="loadthemttgv()" class="btn btn-danger">Thêm</a>
    	</div>
    	<div class="btn btn-lg">
	    	<a href="#" class="btn btn-success">Xóa</a>
    	</div>
    </div>
 
  </div>
   				
   		<div id="trangchuTab" class="tab-pane fade"></div>
   		<div id="detaiTab" class="tab-pane fade">
   			<h3>Danh Sách Đề Tài</h3>
   			<div class="btn-group btn-group-lg">
    	<button class="btn btn-default">Khoa</button>
    	<button class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">Công Nghê Thông Tin</a></li>
			<li><a href="#">Điện-Điện Tử</a></li>
			<li><a href="#">Cơ Khí Chế Tạo Máy</a></li>
			<li><a href="#">Xây Dựng</a></li>
			<li><a href="#">Công Nghệ May Và Thiết Kế Thời Trang</a></li>
		</ul>
    	<br></br>
    	<br></br>
    </div>
   		<div class="panel panel-default">
   		<table class="table table-bordered table-center">
   				<thead>
	            <tr class="success">
	                 <th>Tên Đề Tài</th>
	                 <th>GVHD</th>
	                 <th>Số Lượng Sinh Viên</th>
	                 <th>Mô Tả</th>
	                 <th>File Báo Cáo</th>
	                 <th>Sinh Viên Thực Hiện</th>
	                 <th>Điểm</th>
	                 <th>Nhận Xét</th>
	            </tr>
            </thead>
            <tbody>
	           <c:forEach items="${items3.rows}" var="row">			
								<tr>		
										<td>${row.TenDT}</td>	
										<td>${row.GVHD}</td>	
										<td>${row.SoLuongSV}</td>	
										<td>${row.TenP}</td>
										<td>${row.FileBaoCao}</td>	
										<td>${row.SV}</td>	
										<td>${row.Diem}</td>		
										<td>${row.NhanXet}</td>	
								</tr>							
				</c:forEach>
        	</tbody>
   		</table>
   		
   	</div><ul class="pagination pull-right">
    	<li><a href="#">&laquo;</a></li>
    	<li><a href="#">1</a></li>
    	<li><a href="#">2</a></li>
    	<li><a href="#">3</a></li>
    	<li><a href="#">4</a></li>
    	<li><a href="#">5</a></li>
    	<li><a href="#">&raquo;</a></li>
    </ul>
   
        <div class="btn-toolbar">
    	<div class="btn btn-lg">
    		<a href="#" class="btn btn-warning">Lọc</a>
    	</div>
   		<div class="btn btn-lg">
	    	<a href="#" class="btn btn-info">Lưu</a>
    	</div>
    	<div class="btn btn-lg">
    		<a href="#" onclick="loadthemdt()" class="btn btn-danger">Thêm</a>
    	</div>
    	<div class="btn btn-lg">
	    	<a href="#" class="btn btn-success">Xóa</a>
    	</div>
    </div>
 
   		</div>
   		<div id="phongTab" class="tab-pane fade">
   		<div class="btn-group btn-group-lg">
    	<button class="btn btn-default">Khu</button>
    	<button class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">A</a></li>
			<li><a href="#">B</a></li>
			<li><a href="#">TNTT</a></li>
			<li><a href="#">C</a></li>
			<li><a href="#">D</a></li>
		</ul>
		
    	<br></br>
    	<br></br>
    </div>
   			<div class="panel panel-default">
   		<table class="table table-bordered table-center">
   				<thead>
		           <tr class="success">
		           		 <th>TÊN KHU</th>
		                 <th>TÊN PHÒNG</th>
		                 <th>NGÀY TRỐNG</th>
		               
		            </tr>
            	</thead>
            	  <tbody>
	           <c:forEach items="${items2.rows}" var="row">			
								<tr>		
										<td>${row.TenKhu}</td>
										<td>${row.TenP}</td>	
										<td>${row.NgayTrong}</td>	
											
										
								</tr>							
							</c:forEach>
        	</tbody>
   		</table>
   		
   	</div><ul class="pagination pull-right">
    	<li><a href="#">&laquo;</a></li>
    	<li><a href="#">1</a></li>
    	<li><a href="#">2</a></li>
    	<li><a href="#">3</a></li>
    	<li><a href="#">4</a></li>
    	<li><a href="#">5</a></li>
    	<li><a href="#">&raquo;</a></li>
    </ul>
    
        <div class="btn-toolbar ">
    	<div class="btn btn-lg">
    		<a href="#" class="btn btn-warning">Lọc</a>
    	</div>
   		<div class="btn btn-lg">
	    	<a href="#" class="btn btn-info">Lưu</a>
    	</div>
    	<div class="btn btn-lg">
    		<a href="#" onclick="loadthempt()" class="btn btn-danger">Thêm</a>
    	</div>
    	<div class="btn btn-lg">
	    	<a href="#" class="btn btn-success">Xóa</a>
    	</div>
    </div>
 
   </div>
   </div>
   <br>
 <br>
     <div class="container">
     <div class="row">
     </div>
        <div id="footer">
        <hr>
            <h5 class="text-center text-danger">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
            <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
        </div>
    </div>   
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="snowstorm.js"></script>
    
	<script type="text/javascript" src="snowstorm.js"></script>
 

	<script type="text/javascript">
		snowStorm.snowColor = '#99ccff'; // màu của tuyết - ở đây là màu xanh xám
		snowStorm.flakesMaxActive = 200;  // số lượng tuyết rơi cùng 1 lúc
		snowStorm.useTwinkleEffect = true; // cho tuyết nhấp nháy
	</script>
	 <div id="slideshow">
    <img src="Images/image22.jpg" alt="slideshow image21" class="active" />
    <img src="Images/image21.jpg" alt="slideshow image22"  />
    <img src="Images/image23.jpg" alt="slideshow image23" />
    <img src="Images/image19.jpg" alt="slideshow image19" />
    <img src="Images/image24.jpg" alt="slideshow image24" />
	</div>

<script language="javascript">
					
				function loadthemdt() {
					$("#detaiTab").load("ADD-DTM.jsp");
					    };
				function loadthemttgv() {
					$("#giaovienTab").load("ADD-TTGV.jsp");
						};
				function loadTMTK() {
					$("#qltkTab").load("ADD-TKM.jsp");
						 };
				 function loadthempt() {
					$("#phongTab").load("ADD-PT.jsp");
						};
						  				
				function loadSapLichKhoaLuan() {
					$("#saplichTab").load("SAP_LICH.jsp");
						};		
								
						
				function loadSuaHoiDong() {
					$("#saplichTab").load("SUA-HOIDONG.jsp");
					 };		
								
					    
</script>
  </body>
</html>
