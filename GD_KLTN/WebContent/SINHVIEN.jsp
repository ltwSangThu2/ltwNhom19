<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/kltn" 
		user="root" 
		password="1234"/>
	<sql:query var="items" sql="SELECT TenDT,MoTa,FileBaoCao,SoLuongSV,Diem,NhanXet,T.SV ,S.GVHD  FROM detai ,baocao ,(select HoTen AS SV,IDSV FROM taikhoan,baocao WHERE baocao.IDSV=taikhoan.IDTK) AS T,(select HoTen AS GVHD,IDGV FROM taikhoan,baocao WHERE baocao.IDGV=taikhoan.IDTK) AS S WHERE detai.IDDT=baocao.IDDT and baocao.IDSV=T.IDSV and baocao.IDGV=S.IDGV  "/> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SINH VIEN</title>
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
  
   	<div class="tab-content">
   		<div id="homeTab" class="tab-pane fade "></div>
   		<div id="dangxuatTab" class="tab-pane fade"></div>	
   </div>
   
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
   		
   			<h3 style="color:red;font-weight:bold; text-align: center;font-size: 250%">DANH SÁCH ĐỀ TÀI</h3>
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
    		<br>
    		<br>
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
            	<c:forEach items="${items.rows}" var="row">			
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
    <br></br>
     <br></br>
          </p>
   		</div>
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
    <img src="Images/image22.jpg" alt="slideshow image16" class="active" />
    <img src="Images/image23.jpg" alt="slideshow image17"  />
    <img src="Images/image24.jpg" alt="slideshow image18" />
    <img src="Images/image19.jpg" alt="slideshow image19" />
    <img src="Images/image21.jpg" alt="slideshow image20" />
</div>
  </body>
</html>
