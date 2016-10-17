<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/kltn" 
		user="root" 
		password="1234"/>
	<sql:query var="items" sql="SELECT * FROM dsgv  "/> 
	<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="customDiv.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
     <script type="text/javascript" src="jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="jquery.validate.min.js"></script>

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
   				<a href="#trangchuTab" data-toggle="tab">Trang Chủ</a>
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
	                 <th>STT</th>
	                 <th>Tên Đề Tài</th>
	                 <th>GVHD</th>
	                 <th>Chi Tiết</th>
	            </tr>
            </thead>
            <tbody>
	            <tr>
		            <td>1</td>
		            <td>Zoho CRM</td>
		            <td>Nguyễn Thanh Tuấn </td>
		            <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>                            
	            </tr>
                <tr>
	                <td>2</td>
	                <td>Python for data analynis</td>
	                <td>Hoang Long</td>
	                <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>                            
                </tr>
                <tr>
	                <td>3</td>
	                <td>Supervised Descriptive Rule Discovery</td>
	                <td>Nguyễn Thành Sơn</td>
	                <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr> 
                  <tr>
	                <td>4</td>
	                <td>Xây dựng ứng dụng di động bằng React Native</td>
	                <td>Nguyễn Trần Thi Văn</td>
	                <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr> 
                <tr>
	                <td>5</td>
	                <td>Tìm hiểu Android SDK</td>
	                <td>Lê Văn Vinh</td>
	                <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr> 
                 <tr>
	                <td>6</td>
	                <td>Game đánh vần trên Android</td>
	                <td>Đặng Thị Kim Giao</td>
	                <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr>  
                <tr>
	                <td>7</td>
	                <td>Xây dựng chương trình Elearning</td>
	                <td>Nguyễn Hữu Trung</td>
	                <td><div class="btn">
    		<a href="#" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr>                                 
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
	                 <th>KHOA</th>
	                 <th>HỌ VÀ TÊN</th>
	                 <th>CHUYÊN NGÀNH</th>	                 
	                 <th>NGÀY SINH</th>
	                 <th>GIỚI TÍNH</th>
	                 <th>SỐ ĐIỆN THOẠI</th>
	                 <th>EMAIL</th>
	            </tr>
            </thead>
            <tbody>
	           <c:forEach items="${items.rows}" var="row">			
								<tr>		
										<td>${row.MaGV}</td>	
										<td>${row.Khoa}</td>
										<td>${row.HoTen}</td>	
										<td>${row.ChuyenNganh}</td>	
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
			<li><a href="#">A1</a></li>
			<li><a href="#">A2</a></li>
			<li><a href="#">A3</a></li>
			<li><a href="#">A4</a></li>
			<li><a href="#">A5</a></li>
		</ul>
    	<br></br>
    	<br></br>
    </div>
   			<div class="panel panel-default">
   		<table class="table table-bordered table-center">
   				<thead>
		            <tr class="success">
		                 <th>TÊN PHÒNG</th>
		                 <th>NGÀY TRỐNG</th>
		                 <th>GIỜ TRỐNG</th>
		            </tr>
            	</thead>
            	<tbody>
		            <tr>
			            <td>A3-403</td>
			            <td>
				            <br>- 05/07/2016</br>
				            <br>- 06/07/2016</br>
				            <br>- 09/07/2016</br>
						</td>
			            <td>
				            <br>- 7h00:11h30</br>
				            <br>- 12h00:5h00</br>
				            <br>- 7h00:11h30</br>
			            </td>                   
		            </tr>
		            <tr>
			            <td>A3-403</td>
			            <td>
				            <br>- 05/07/2016</br>
				            <br>- 06/07/2016</br>
				            <br>- 09/07/2016</br>
						</td>
			            <td>
				            <br>- 7h00:11h30</br>
				            <br>- 12h00:5h00</br>
				            <br>- 7h00:11h30</br>
			            </td>                   
		            </tr>
                           
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
   		<table class="table table-bordered table-center table-striped">
   			<thead>
	            <tr class="danger">
	                 <th>Chọn</th>
	                 <th>Tài Khoản</th>
	                 <th>Tên Tài Khoản</th>
	                 <th>Email</th>
	                 <th>Quyền</th>
	            </tr>
            </thead>
            <tbody>
	            <tr>
		            <td>
		            	<input type="checkbox" name="vehicle" value="TK"></br>
		            </td>
		            <td>Trưởng Khoa/Bộ Môn</td>
		            <td>Dung1234 </td>
		            <td>Dung25@gmail.com</td>  
		            <td>Trưởng Khoa/Bộ Môn</td>                            
	            </tr>
                <tr>
	                <td>
		            	<input type="checkbox" name="vehicle" value="GV"></br>
		            </td>
		            <td>Giáo Viên</td>
		            <td>Chau1234 </td>
		            <td>Chau123@gmail.com</td>  
		            <td>Giáo Viên</td>                       
                </tr>
                <tr>
	                <td>
		            	<input type="checkbox" name="vehicle" value="SV"></br>
		            </td>
		            <td>Sinh Viên</td>
		            <td>Hoang1234 </td>
		            <td>Hoang12@gmail.com</td>  
		            <td>Sinh Viên</td> 
                </tr> 
                                    
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
   		</p>
   		</div>
   </div>
   </div>
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
 
    <script type="text/javascript" src="snowstorm.js"></script>
    
	<script type="text/javascript" src="snowstorm.js"></script>
 

	<script type="text/javascript">
		snowStorm.snowColor = '#99ccff'; // màu của tuyết - ở đây là màu xanh xám
		snowStorm.flakesMaxActive = 200;  // số lượng tuyết rơi cùng 1 lúc
		snowStorm.useTwinkleEffect = true; // cho tuyết nhấp nháy
	</script>
	 <div id="slideshow">
    <img src="Images/image1.jpg" alt="slideshow image1" class="active" />
    <img src="Images/image7.jpg" alt="slideshow image2"  />
    <img src="Images/image8.jpg" alt="slideshow image3" />
    <img src="Images/image4.jpg" alt="slideshow image4" />
    <img src="Images/image9.jpg" alt="slideshow image5" />
	</div>
<script language="javascript">
					
				function loadthemdt() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("detaiTab").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "ADD-DTM.jsp", true); 
					  xhttp.send();
					}
				function loadthempt() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("phongTab").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "ADD-PT.jsp", true); 
					  xhttp.send();
					}
				function loadthemttgv() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("giaovienTab").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "ADD-TTGV.jsp", true); 
					  xhttp.send();
					}
				function loadTMTK() {
					  var xhttp = new XMLHttpRequest();
					  xhttp.onreadystatechange = function() {
					    if (this.readyState == 4 && this.status == 200) {
					      document.getElementById("qltkTab").innerHTML = this.responseText;
					    }
					  };
					  xhttp.open("GET", "ADD-TKM.jsp", true); 
					  xhttp.send();
					}
				
				</script>
  </body>
</html>
