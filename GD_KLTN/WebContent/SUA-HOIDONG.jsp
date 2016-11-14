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
<div class="container">
<br></br>
	<form  >
	<div class="form-group">
	<label >DANH SÁCH HỘI ĐỒNG</label>
	<div class="table-responsive">
       <table class="table table-striped table-bordered table-hover">
           <thead>
               <tr>
                    <th>STT</th>
                    <th>Tên Hội Đồng</th>
                    <th>Chủ Tịch Hội Đồng</th>
                    <th>Uỷ Viên</th>
                    <th>Tuỳ Chỉnh</th>
               </tr>
           </thead>
           <tbody>
              <tr>
                    <td>1</td>
                    <td>Hội đồng BVKLTN 1</td>
                    <td>Đặng Thanh Dũng</td>
                    <td>Nguyễn Minh Đạo</td>
                    <td class="text-center">
                        <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#ChinhSuaHD">
                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa
                        </button>
                        <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#XoaHD">
                        <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
                        </button>
                   </td>
              </tr>
              <tr>
                    <td>2</td>
                    <td>Hội Đồng BVKLTN 2</td>
                    <td>Nguyễn Văn A</td>
                    <td>Mai Tuấn Khôi</td>
                    <td class="text-center">
              <button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#ChinhSuaHD">
              <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> Sửa
              </button>
              <button type="button" class="btn btn-danger btn-xs" data-toggle="modal" data-target="#XoaHD">
              <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> Xóa
              </button>
              </td>
              </tr>
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


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary">Sửa</button>
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