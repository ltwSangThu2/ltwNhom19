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
	<sql:query var="items3" sql="SELECT TenDT,MoTa,FileBaoCao,SoLuongSV,baocao.IDGV,Diem,NhanXet,T.SV ,S.GVHD  FROM detai ,baocao ,(select HoTen AS SV FROM taikhoan,baocao WHERE baocao.IDSV=taikhoan.IDTK) AS T,(select HoTen AS GVHD FROM taikhoan,baocao WHERE baocao.IDGV=taikhoan.IDTK) AS S WHERE detai.IDDT=baocao.IDDT "/> 
	<sql:query var="items4" sql="SELECT * FROM taikhoan,role WHERE taikhoan.IDRole=role.IDRole"/>    
	<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ADMIN</title>
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
   			<li class="active">
   				<a href="#detaiTab" data-toggle="tab">Danh Sách Đề Tài</a>
   			</li>
   			<li>
   				<a href="#giaovienTab" data-toggle="tab">Danh Sách Giao Viên</a>
   			</li>
   			<li>
   				<a href="#phongTab" data-toggle="tab">Danh Sách Phòng Trống</a>
   			</li>
   			<li>
   				<a href="LogoutServlet">Đăng Xuất</a>
   			</li>
   			<li>
   				<a href="#qltkTab" data-toggle="tab">Quản Lý Tài Khoản</a>
   			</li>
   		</ul>
   		</div>
   	</div>
  
   	<div class="tab-content">
   		<div id="detaiTab" class="tab-pane fade in active">
   			<h3>Danh Sách Đề Tài</h3>
   			<p>	    <div class="btn-group btn-group-lg">
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
    
   	</p>
   		</div>
   		<div id="giaovienTab" class="tab-pane fade">
   		<p> <div class="btn-group btn-group-lg">
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
	                 <th>BỘ MÔN</th>	                 
	                 <th>NGÀY SINH</th>
	                 <th>GIỚI TÍNH</th>
	                 <th>SỐ ĐIỆN THOẠI</th>
	                 <th>EMAIL</th>
	            </tr>
            </thead>
            <tbody>
	           <c:forEach items="${items.rows}"  var="row">			
								<tr>		
										<td>${row.IDTK}</td>	
										<td>${row.HoTen}</td>	
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
    
   	</p>
   		</div>
   		<div id="phongTab" class="tab-pane fade ">
   		<p> <div class="btn-group btn-group-lg">
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
    		<a href="#" onclick="loadthempt()" class="btn btn-danger">Thêm</a>
    	</div>
    	<div class="btn btn-lg">
	    	<a href="#" class="btn btn-success">Xóa</a>
    	</div>
    </div>
    
   	</p>
   		</div>
   		<div id="trangchuTab" class="tab-pane fade">
   		</div>
   		<div id="qltkTab" class="tab-pane fade">
   		<p>
   	<div class="row">
    <div class="search col-md-6 col-sm-6 col-xs-12 text">
        <form method="get" action="#">
          <input type="text" placeholder="Nhập tài khoản cần tìm" id="q" name="q" value="">
          <input type="submit" value="Tìm Kiếm">
        </form>
      </div>
      <div class="clearfix"></div>
</div>
	    <div class="btn-group btn-group-lg">
    	<button class="btn btn-default">Tài Khoản</button>
    	<button class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
    		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">Giáo Viên</a></li>
			<li><a href="#">Sinh Viên</a></li>
			<li><a href="#">Trưởng Khoa</a></li>
			<li><a href="#">Tất Cả</a></li>
			
		</ul>
    	<br></br>
    	<br></br>
    </div>
   		<div class="panel panel-default">
   		<table class="table table-bordered table-center table-striped" id="mytable">
   			<thead>
	            <tr class="danger">
	                 <th hidden="true">TenTK</th>
	                 <th>HỌ VÀ TÊN</th>
	                 <th>CHUYÊN NGÀNH</th>
	                 <th>BỘ MÔN</th>	                 
	                 <th>NGÀY SINH</th>
	                 <th>GIỚI TÍNH</th>
	                 <th>SỐ ĐIỆN THOẠI</th>
	                 <th>EMAIL</th>
	                 <th>MẬT KHẨU</th>
	                 <th>QUYỀN</th>
	                 <th>XÓA TÀI KHOẢN</th>
	            </tr>
            </thead>
            <tbody>
             <c:forEach items="${items4.rows}"  var="row">	
	            <tr>
		            <td hidden="true">${row.TenTK}</td>	
					<td>${row.HoTen}</td>	
					<td>${row.ChuyenNganh}</td>
					<td>${row.BoMon}</td>	
					<td>${row.NgaySinh}</td>
					<td>${row.GioiTinh}</td>	
					<td>${row.SDT}</td>	
					<td>${row.Email}</td>		
					<td>${row.MatKhau}</td>
					<td>${row.RoleName}</td>
					<td><a  onclick="XoaDong(this);" style="color:pink;font-weight:bold">XÓA</a></td>					
				</tr>							
			</c:forEach>                                      
        	</tbody>
   		</table>
   		
   	</div>
        <div class="btn-toolbar ">
    	<div class="btn btn-lg">
    		<a href="#" class="btn btn-warning">Xóa</a>
    	</div>
   		<div class="btn btn-lg">
	    	<a href="#" class="btn btn-info">Xem Thông Tin</a>
    	</div>
    	<div class="btn btn-lg">
    		<a href="#" onclick="loadTMTK()" class="btn btn-success">Tạo Mới</a>
    	</div>
    
    </div>
   	</p>
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
    <img src="Images/image24.jpg" alt="slideshow image16" class="active" />
    <img src="Images/image21.jpg" alt="slideshow image17"  />
    <img src="Images/image22.jpg" alt="slideshow image18" />
    <img src="Images/image23.jpg" alt="slideshow image19" />
    <img src="Images/image19.jpg" alt="slideshow image20" />
	</div>
	<div class="container">
        <div id="footer">
        <hr>
            <h5 class="text-center text-danger">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
            <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
        </div>
    </div>
<script type="text/javascript">
					
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
			
</script>
<script type="text/javascript">
	function XoaDong(XD){
		var retVal = confirm("Ban Có Chắc Muốn Xóa Tài Khoản Này Không ?");
		if(retVal == true){
			var a = XD.parentNode.parentNode.rowIndex;
			var b = document.getElementById("mytable").rows[a].cells[0].innerHTML;
			window.location.href="XoaDuLieu?TenTK="+b;
			return true;
		}
		else{
			return false;
		}
	}
</script>
				

				
  </body>
</html>
