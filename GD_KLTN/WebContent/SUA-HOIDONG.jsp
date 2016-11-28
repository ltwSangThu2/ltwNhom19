<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
    	<sql:setDataSource 	driver="com.mysql.jdbc.Driver"    	
		url="jdbc:mysql://localhost/kltn" 
		user="root" 
		password="1234"/>
    <sql:query var="items" sql="SELECT * FROM hoidong a,phongtrong b,giobaocao c WHERE a.IDP=b.IDP and a.GioID=c.GioID"/>
 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>jQuery Validate</title>	
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
     <link href="customDiv.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
    	<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="jquery.validate.min.js"></script>
	  <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
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
h1 { 
 border:0 solid #fff; 
 border-bottom-width:1px;
 padding-bottom:10px;
 text-align: center;
 color: brown;
}
	</style>
</head>
<body>
<div class="container">
<br></br>
	<form  >
	<div class="form-group">
	<h1>DANH SÁCH HỘI ĐỒNG</h1><br>
	<div class="table-responsive">
       <table class="table table-striped table-bordered table-hover">
           <thead>
               <tr>
                    <th>Tên Hội Đồng</th>
                    <th>Chủ Tịch Hội Đồng</th>
                    <th>Uỷ Viên</th>
                    <th>Phản Biện</th>
                    <th>Hướng Dẫn</th>
                    <th>Ngày Bảo Vệ</th>
                    <th>Phòng</th>
                    <th>Giờ Báo Cáo</th>
                    <th>Tuỳ Chỉnh</th>
               </tr>
           </thead>
           <tbody>
           <c:forEach items="${items.rows}" var="row">			
								<tr>		
										<td>${row.TenHD}</td>	
										<td>${row.CT}</td>
										<td>${row.UV}</td>
										<td>${row.PB}</td>
										<td>${row.HD}</td>			
										<td>${row.NgayTrong}</td>	
										<td>${row.TenP}</td>	
										<td>${row.Gio}</td>
										<td class="text-center">
                        					<button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#ChinhSuaHD">
                        						<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa
                        					</button>
                        					<button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#XoaHD">
                        						<span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
                       						 </button>
                   						</td>
								</tr>							
				</c:forEach>          
         </tbody>
    </table>
    </div>
</div>
</form>
</div>
    <!-- Start Modal sửa thông tin hội đồng -->
    <div class="modal fade" id="ChinhSuaHD" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Sửa thông tin Hội Đồng</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="id">Tên hội đồng:</label>
                        <input type="text" class="form-control" id="tenhd" required value="Hội đồng BVKLTN 1">
                    </div>
                    <div class="form-group">
		                 <label for="inputlg">Chủ tịch hội đồng:</label>
		                 <input type="text" class="form-control" id="chutichhd" required value="Đặng Thanh Dũng">
		            </div>
                    <div class="form-group">
                        <label for="name">Uỷ viên:</label>
                        <input type="text" class="form-control" id="uyvien" required value="Nguyễn Minh Đạo">
                    </div>
					 <div class="form-group">
                        <label for="name">Phản biện:</label>
                        <input type="text" class="form-control" id="phanbien" required value="Tô Ánh Ngọc">
                    </div>
					<div class="form-group">
                        <label for="name">Ngày Bảo Vệ:</label>
                        <input type="text" class="form-control" id="ngaybv" required value="13/06/2016">
                    </div>
                    <div class="form-group">
                        <label for="name">Tên Phòng:</label>
                        <input type="text" class="form-control" id="TP" required value="A4-402">
                    </div>
                    <div class="form-group">
                        <label for="name">Giờ Báo Cáo:</label>
                        <input type="text" class="form-control" id="giobc" required value="7h-8h">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Lưu</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>
 <!-- Start Modal xóa đề tài -->
     <div class="modal fade" id="XoaHD" role="dialog">
        <div class="modal-dialog modal-md">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">XÓA HỘI ĐỒNG</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Bạn có muốn xóa hội đồng này</label>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Xóa</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
    <!-- End Modal Xóa Đề Tài  -->
   
</body>
</html>