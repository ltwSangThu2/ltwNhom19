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
   
   <div class="row">
   		<div class="col-xs-12">
   		<ul class="nav nav-tabs">
   			<li >
   				<a href="#trangchuTab" data-toggle="tab">Trang chủ</a>
   			</li>
   			<li>
   				<a href="#giaovienTab" data-toggle="tab">Danh Sách Giao Viên</a>
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
   		<div id="saplichTab" class="tab-pane fade ">
   			<h3 align="center">SẮP LỊCH KHÓA LUẬN TỐT NGHIỆP</h3>
			
   			<p>	  
   			<div class="btn-toolbar">
	   			<div class="btn-group btn-group-lg">
		    		<button class="btn btn-default ">Chọn Khoa</button>
		    		<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		    			<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#"> Công Nghê Thông Tin</a></li>
						<li><a href="#"> Điện-Điện Tử</a></li>
						<li><a href="#"> Cơ Khí Chế Tạo Máy</a></li>
						<li><a href="#"> Xây Dựng</a></li>
						<li><a href="#"> Công Nghệ May Và Thiết Kế Thời Trang</a></li>
					</ul>
					
			    	
	    	    </div>
	    	    <div class="btn-group btn-group-lg">
		    		<button class="btn btn-default ">Chọn Chuyên ngành</button>
		    		<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
		    			<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#"> Hệ thống thông tin</a></li>
						<li><a href="#"> Mạng máy tính</a></li>
						<li><a href="#"> Công nghệ phần mềm</a></li>						
					</ul>
					
	    	    </div>
    	   </div>
    	   <br></br>
    	  
   	<div class="panel panel-success">
   		<table class="table table-bordered table-center">
   			<thead>
	            <tr class="success">
	                 <th>Ngày</th>
	                 <th>Phòng</th>
	                 <th>Hội Đồng</th>
	                 <th>Thời gian BĐ</th>
	                 <th>Thời gian KT</th>
	                 <th>Tên GV</th>
	                 <th>Vị trí GV</th>
	            </tr>
            </thead>
          
            <tbody>
	            <tr>
		            <td>Ngày</td>
		            <td>
			            <select name="phongtrong">
						<option >A4-101</option>
						<option >A5-303</option>
						<option >A4-402</option>
						</select>
					</td>
		            <td> 
		            	<select name="hoidong">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						</select>
					</td>
		            <td>
		            	<select name="BD">
						<option >7h</option>
						<option >8h</option>
						<option >9h</option>
						<option >10h</option>
						<option >11h</option>
						</select>
					</td>  
		            <td>
		            	<select name="KT">
						<option >13h</option>
						<option >14h</option>
						<option >15h</option>
						<option >16h</option>
						<option >17h</option>
						</select>
		            </td>  
		            <td>
		            	<select name="GV1">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV2">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV3">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
					</td> 
		            <td>
			            <select name="VT1">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT2">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT3">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
		            </td>                          
	            </tr>
                <tr>
	                <td>Ngày</td>
		            <td>
			            <select name="phongtrong">
						<option >A4-101</option>
						<option >A5-303</option>
						<option >A4-402</option>
						</select>
					</td>
		            <td> 
		            	<select name="hoidong">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						</select>
					</td>
		            <td>
		            	<select name="BD">
						<option >7h</option>
						<option >8h</option>
						<option >9h</option>
						<option >10h</option>
						<option >11h</option>
						</select>
					</td>  
		            <td>
		            	<select name="KT">
						<option >13h</option>
						<option >14h</option>
						<option >15h</option>
						<option >16h</option>
						<option >17h</option>
						</select>
		            </td>  
		            <td>
		            	<select name="GV1">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV2">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV3">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
					</td> 
		            <td>
			            <select name="VT1">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT2">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT3">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
		            </td>                          
	            </tr>                
             
                <tr>
	                <td>Ngày</td>
		            <td>
			            <select name="phongtrong">
						<option >A4-101</option>
						<option >A5-303</option>
						<option >A4-402</option>
						</select>
					</td>
		            <td> 
		            	<select name="hoidong">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						</select>
					</td>
		            <td>
		            	<select name="BD">
						<option >7h</option>
						<option >8h</option>
						<option >9h</option>
						<option >10h</option>
						<option >11h</option>
						</select>
					</td>  
		            <td>
		            	<select name="KT">
						<option >13h</option>
						<option >14h</option>
						<option >15h</option>
						<option >16h</option>
						<option >17h</option>
						</select>
		            </td>  
		            <td>
		            	<select name="GV1">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV2">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV3">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
					</td> 
		            <td>
			            <select name="VT1">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT2">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT3">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
		            </td>                          
	            </tr>
                <tr>
	                <td>Ngày</td>
		            <td>
			            <select name="phongtrong">
						<option >A4-101</option>
						<option >A5-303</option>
						<option >A4-402</option>
						</select>
					</td>
		            <td> 
		            	<select name="hoidong">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						</select>
					</td>
		            <td>
		            	<select name="BD">
						<option >7h</option>
						<option >8h</option>
						<option >9h</option>
						<option >10h</option>
						<option >11h</option>
						</select>
					</td>  
		            <td>
		            	<select name="KT">
						<option >13h</option>
						<option >14h</option>
						<option >15h</option>
						<option >16h</option>
						<option >17h</option>
						</select>
		            </td>  
		            <td>
		            	<select name="GV1">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV2">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
						<br></br>
						<select name="GV3">
							<option >Nguyễn Văn A</option>
							<option >Nguyễn VĂn B</option>
							<option >Nguyễn Thị C</option>
							<option >Dương Thị D</option>
							<option >Lê Văn H</option>
						</select>
					</td> 
		            <td>
			            <select name="VT1">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT2">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
						<br></br>
						 <select name="VT3">
							<option >Phản biện</option>
							<option >Uỷ viên</option>
							<option >Chủ tịch HĐ</option>
						</select>
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
    <br></br>
     <br></br>
       
    	
   		<div class="btn btn-lg pull-right">
	    	<a href="#" class="btn btn-danger">Lưu</a>
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
	            <tr>
		            <td>123456</td>
			        <td>CNTT</td>
			        <td>Nguyễn Văn An</td>
			        <td>HTTT</td>
			        <td>1/1/1970</td>
			        <td>Nam</td>
			        <td>0976856738</td>
			        <td>annguyen@gmail.com</td>            
				</tr>   		            
	            <tr>
		            <td>123458</td>
			        <td>CNTT</td>
			        <td>Nguyễn Thị Trang</td>
			        <td>Mạng</td>
			        <td>1/1/1980</td>
			        <td>Nữ</td>
			        <td>0976856345</td>
			        <td>trangnguyen@gmail.com</td>	
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
   		<div id="trangchuTab" class="tab-pane fade"></div>
   		<div id="detaiTab" class="tab-pane fade">
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
   		<div id="phongTab" class="tab-pane fade">
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
    <img src="Images/image15.jpg" alt="slideshow image15" class="active" />
    <img src="Images/image1.jpg" alt="slideshow image2"  />
    <img src="Images/image11.jpg" alt="slideshow image11" />
    <img src="Images/image9.jpg" alt="slideshow image9" />
    <img src="Images/image13.jpg" alt="slideshow image13" />
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
				
				
				</script>
  </body>
</html>
