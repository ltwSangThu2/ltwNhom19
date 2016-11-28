<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/kltn" 
		user="root" 
		password="1234"/>
	<sql:query var="items" sql="SELECT *  FROM detai ,baocao,taikhoan WHERE detai.IDDT=baocao.IDDT and baocao.IDGV=taikhoan.IDTK"/> 
	<sql:query var="items2" sql="SELECT * FROM taikhoan INNER JOIN role ON taikhoan.IDRole = role.IDRole WHERE role.RoleName = 'GiaoVien'"/>
 	<sql:query var="items3" sql="SELECT * FROM giobaocao"/>
 	<sql:query var="items4" sql="SELECT * FROM phongtrong"/>
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
				<label>TÊN HỘI ĐỒNG</label>
				<input class="form-control" type="text" id="HD" name="HD" placeholder="Nhập tên hội đồng" required>
			</div>	
			<div class="form-group">
	<label >CHỌN ĐỀ TÀI CHO HỘI ĐỒNG</label>
		<div class="panel panel-default">
   			<table class="table table-bordered table-center">
	   			<thead>
		            <tr class="success">
		            	 <th>Chọn</th>
		                 <th>Tên Đề Tài</th>
		                 <th>GVHD</th>
		                 <th>Số Lượng Sinh Viên</th>
		                 <th>File báo cáo</th>
		            </tr>
	            </thead>
	            <tbody>
		            <c:forEach items="${items.rows}"  var="row">	
	            		<tr>
		           			 <td>
		            			<input type="checkbox" name="vehicle" value="TK"></br>
		            		</td>	
							<td>${row.TenDT}</td>	
							<td>${row.HoTen}</td>
							<td>${row.SoLuongSV}</td>	
							<td>${row.FileBaoCao}</td>				
						</tr>							
					</c:forEach>          
	        	</tbody>
	   		</table>
	   	</div>
</div>   
			<div class="form-group">
      			<label>PHẢN BIỆN </label>
     			<input type="text" list="DSGV" name="GVPB" class="form-control" placeholder="Chọn giáo viên phản biện" >
     				<datalist id="DSGV">
     				 <c:forEach items="${items2.rows}"  var="row">	
							<option value="${row.HoTen}">	
										
					</c:forEach>
			  		</datalist>			  				
   			</div>
   			
   			<div class="form-group">
      			<label>ỦY VIÊN</label>
     			<input type="text" list="DSGV" name="UV" class="form-control" placeholder="Chọn vị trí ủy viên " >
     				<datalist id="DSGV">
			  		</datalist>
   			</div>
			<div class="form-group">
      			<label>CHỦ TỊCH HĐ</label>
     			<input type="text" list="DSGV" name="CTHD" class="form-control" placeholder="Chọn chủ tịch hội đồng " >
     				<datalist id="DSGV">
			  		</datalist>
   			</div>
   			<div class="form-group">
      			<label>NGÀY BẢO VỆ</label>
     			<input type="text" list="DSNT" name="NBV" class="form-control" placeholder="Chọn ngày bảo vệ khóa luận" >
     				<datalist id="DSNT">
						 <c:forEach items="${items4.rows}"  var="row">	
							<option value="${row.NgayTrong}">	
										
					</c:forEach>		    
			  		</datalist>
   			</div>
   			<div class="form-group">
      			<label>TÊN PHÒNG:</label>
     			<input type="text" list="DSPT" name="TP" class="form-control" placeholder="Chọn phòng " >
     				<datalist id="DSPT">
						<c:forEach items="${items4.rows}"  var="row">	
							<option value="${row.TenP}">	
										
					</c:forEach>	
			  		</datalist>
   			</div>
   			<div class="form-group">
      			<label>GIỜ BÁO CÁO</label>
     			<input type="text" list="DSGT" name="GBC" class="form-control" placeholder="Chọn thời gian" >
     				<datalist id="DSGT">
						<c:forEach items="${items3.rows}"  var="row">	
							<option value="${row.Gio}">	
										
					</c:forEach>	
			  		</datalist>
   			</div>

</form>
</div>			
<div class="container">  
  <button type="button" class="btn btn-danger">RESET</button>
  <button type="button" class="btn btn-primary">SAVE</button>
 </div> 
</body>
</html>