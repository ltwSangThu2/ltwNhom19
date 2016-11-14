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
    					<a href="#" onclick="loadTaoHoiDong()" class="btn btn-info">TẠO HỘI ĐỒNG</a>
    				</div>
    				<div class="btn btn-lg ">
    					<a href="#" onclick="loadSuaHoiDong()" class="btn btn-warning">XEM HỘI ĐỒNG</a>
    				</div>	
  				</form>
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
			
											    
					
					
				
				</script>
  </body>
</html>
