<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>jQuery Validate</title>	
    <link href="customDiv.css" rel="stylesheet">
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">    
   

	
	<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="jquery.validate.min.js"></script>
	<style type="text/css">
	label {
		display: inline-block;
		width: 300px;
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

	<div class="container">
	<br></br>
	<form >
			<div class="form-group">
				<label>Tên Hội Đồng</label>
				<input class="form-control" type="text" id="HD" name="HD" placeholder="Nhập tên hội đồng" required>
			</div>	
			<div class="form-group">
      			<label for="GVPB">GIÁO VIÊN PHẢN BIỆN :</label>
     			<input type="text" list="DSGV" class="form-control" placeholder="Chọn giáo viên phản biện" >
     				<datalist id="DSGV" >
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
      			<label for="UV">ỦY VIÊN HỘI ĐỒNG:</label>
     			<input type="text" list="DSGV" class="form-control" placeholder="Chọn vị trí ủy viên " >
     				<datalist id="DSGV">
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
      			<label for="CTHD">ỦY VIÊN HỘI ĐỒNG:</label>
     			<input type="text" list="DSGV" class="form-control" placeholder="Chọn chủ tịch hội đồng " >
     				<datalist id="DSGV">
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
      			<label for="NGAY">NGÀY BẢO VỆ:</label>
     			<input type="text" list="DSNT" class="form-control" placeholder="Chọn ngày bảo vệ khóa luận" >
     				<datalist id="DSNT">
								    <option value="04/06/2016">
								    <option value="05/07/2016">
								    <option value="08/07/2016">
			  		</datalist>
   			</div>
   			<div class="form-group">
      			<label for="PHONG">PHÒNG TRỐNG:</label>
     			<input type="text" list="DSPT" class="form-control" placeholder="Chọn phòng trống " >
     				<datalist id="DSPT">
								    <option value="A4-401">
								    <option value="A4-404">
								    <option value="A4-303">
								  
			  		</datalist>
   			</div>
   			<div class="form-group">
      			<label for="GIO">GIỜ TRỐNG:</label>
     			<input type="text" list="DSGT" class="form-control" placeholder="Chọn giờ trống " >
     				<datalist id="DSGT">
								    <option value="7h-7h30">
								    <option value="8h-9h">
								    <option value="10h-11h">
								  
			  		</datalist>
   			</div>
<div class="form-group">
	<label >CHỌN ĐỀ TÀI CHO HỘI ĐỒNG</label>
	<table class="table table-bordered " >
	   			<thead>
		            <tr class="success">
		                 <th>STT</th>
		                 <th>Tên Đề Tài</th>
		                 <th>GVHD</th>
		                  <th>Số Lượng Sinh Viên</th>
		                   <th>File báo cáo</th>
		                 <th>Chọn</th>
		            </tr>
	            </thead>
	            <tbody>
		            <tr>
			            <td>1</td>
			            <td>Zoho CRM</td>
			            <td>Nguyễn Thanh Tuấn </td>
			            <td>2</td>
			             <td></td>
			            <td>
	      				<input type="checkbox" value="">
	    				</td>                            
		            </tr>
	                <tr>
		                <td>2</td>
		                <td>Python for data analynis</td>
		                <td>Hoang Long</td>
		                 <td>2</td>
		                  <td></td>
		                <td>
	      				<input type="checkbox" value="">
	    				</td>                            
	                </tr>
	                <tr>
		                <td>3</td>
		                <td>Supervised Descriptive Rule Discovery</td>
		                <td>Nguyễn Thành Sơn</td>
		                 <td>2</td>
		                 <td></td>
		                <td>
	      				<input type="checkbox" value="">
	    				</td>
	                </tr> 
	                  <tr>
		                <td>4</td>
		                <td>Xây dựng ứng dụng di động bằng React Native</td>
		                <td>Nguyễn Trần Thi Văn</td>
		                 <td>2</td>
		                  <td></td>
		                <td>
	      				<input type="checkbox" value="">
	    				</td>
	                </tr> 
	                <tr>
		                <td>5</td>
		                <td>Tìm hiểu Android SDK</td>
		                <td>Lê Văn Vinh</td>
		                 <td>2</td>
		                  <td></td>
		                <td>
	      				<input type="checkbox" value="">
	    				</td>
	                </tr> 
	                 <tr>
		                <td>6</td>
		                <td>Game đánh vần trên Android</td>
		                <td>Đặng Thị Kim Giao</td>
		                 <td>2</td>
		                  <td></td>
		                <td>
	      				<input type="checkbox" value="">
	    				</td>
	                </tr>  
	                <tr>
		                <td>7</td>
		                <td>Xây dựng chương trình Elearning</td>
		                <td>Nguyễn Hữu Trung</td>
		                 <td>2</td>
		                  <td></td>
		                <td>
	      				<input type="checkbox" value="">
	    				</td>
	                </tr>                                 
	        	</tbody>
	   		</table>
</div>   
</form>
</div>			
<div class="container">  
  <button type="button" class="btn btn-danger">RESET</button>
  <button type="button" class="btn btn-primary">SAVE</button>
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
</body>
</html>