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
     <link href="customDiv.css" rel="stylesheet">
    
     <script type="text/javascript" src="jquery-1.2.6.min.js"></script>


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
  
  
    <div class="container">
   <div class="row">
   		<div class="col-xs-12">
   		<ul class="nav nav-tabs">
   			<li class="active">
   				<a href="#homeTab" data-toggle="tab">Trang Chủ</a>
   			</li>
   			<li>
   				<a href="#dangxuatTab" data-toggle="tab">Đăng Xuất</a>
   			</li>
   			
   		</ul>
   		</div>
   	</div>
   	</div>
   	<div class="tab-content">
   		<div id="homeTab" class="tab-pane fade "></div>
   		<div id="dangxuatTab" class="tab-pane fade"></div>	
   </div>
   <div class="container">
            <div class="row">
            <div class="col-md-3">
            <div class="customDiv">
            
            	<ul class="nav">
            		<li class="active">
   				<h3 href="#detaiTab" data-toggle="tab" style="color:red">Xem Thông Tin Đề Tài</h3>
   			</li>
   			
            	</ul>
            </div>	
            	</div>
        
        
            <div class="col-md-9">
<div class="tab-content">
   		<div id="detaiTab" class="tab-pane fade in active">
   		
   			<h3 style="color:red">DANH SÁCH ĐỀ TÀI</h3>
   			<p>  
            <div class="btn-group btn-group-lg">
    	<button class="btn btn-default">Chuyên Ngành</button>
    	<button class="btn btn-success dropdown-toggle" data-toggle="dropdown">
    		<span class="caret"></span>
		</button>
		<ul class="dropdown-menu">
			<li><a href="#">Công Nghê Phần Mềm</a></li>
			<li><a href="#">Hệ Thống Thông Tin</a></li>
			<li><a href="#">Mạng</a></li>
			<li><a href="#">Tất cả</a></li>
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
    		<a href="file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT1.html" class="btn btn-warning">Chi Tiết</a>
    	</div></td>                            
	            </tr>
                <tr>
	                <td>2</td>
	                <td>Python for data analynis</td>
	                <td>Hoang Long</td>
	                <td><div class="btn">
    		<a href="file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT2.html" class="btn btn-warning">Chi Tiết</a>
    	</div></td>                            
                </tr>
                <tr>
	                <td>3</td>
	                <td>Supervised Descriptive Rule Discovery</td>
	                <td>Nguyễn Thành Sơn</td>
	                <td><div class="btn">
    		<a href="file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT3.html" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr> 
                  <tr>
	                <td>4</td>
	                <td>Xây dựng ứng dụng di động bằng React Native</td>
	                <td>Nguyễn Trần Thi Văn</td>
	                <td><div class="btn">
    		<a href="file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT4.html" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr> 
                <tr>
	                <td>5</td>
	                <td>Tìm hiểu Android SDK</td>
	                <td>Lê Văn Vinh</td>
	                <td><div class="btn">
    		<a href="file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT5.html" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr> 
                 <tr>
	                <td>6</td>
	                <td>Game đánh vần trên Android</td>
	                <td>Đặng Thị Kim Giao</td>
	                <td><div class="btn">
    		<a href="#file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT6.html" class="btn btn-warning">Chi Tiết</a>
    	</div></td>
                </tr>  
                <tr>
	                <td>7</td>
	                <td>Xây dựng chương trình Elearning</td>
	                <td>Nguyễn Hữu Trung</td>
	                <td><div class="btn">
    		<a href="file:///D:/TAI%20LIEU%20CAC%20MON%20HOC/LTWEB/workspace/GD_KLTN/WebContent/CTĐT7.html" class="btn btn-warning">Chi Tiết</a>
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
    <br></br>
     <br></br>
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
    <img src="Images/image5.jpg" alt="slideshow image5"  />
    <img src="Images/image2.jpg" alt="slideshow image2" />
    <img src="Images/image4.jpg" alt="slideshow image4" />
    <img src="Images/image3.jpg" alt="slideshow image3" />
</div>
  </body>
</html>
