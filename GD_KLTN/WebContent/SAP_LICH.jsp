<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true" %>
<%@ page import="java.util.*" %>

<% ArrayList c= (ArrayList)session.getAttribute("detais");%>
<% ArrayList d= (ArrayList)session.getAttribute("hoidongs");%>
<c:set var="a" value="<%=c %>" />
<c:set var="b" value="<%=d %>" />
	
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
	<form  action="SaplichServlet"  name="loginform" method="post"  >
			<div class="form-group">
				<label>CHỌN TÊN HỘI ĐỒNG</label>
					<select class="form-control" id="HD" name="HD" onChange="ChonHD()">
       					<c:forEach items="${b}" var="row">	
							<option value="${row.chuyenNganh}" >${row.tenHoidong}</option>				
						</c:forEach>		
      				</select>		
			</div>	
			<div class="form-group"> 
      			<label>CHỌN ĐỀ TÀI</label>
      				<select  class='form-control' id="CDT" name="CDT" onChange="ChonDT()" >
       					<c:forEach items="${a}" var="row">
       						<option value="${row.idProject}">${row.nameProject}</option>	
   					
					</c:forEach>		
      				</select>
      		</div>
      	
      		<div class="form-group"  id="GVHD">
      			<label>GVHD</label>
      				<select class='form-control'>
      				</select> 				
   			</div>
			<div class="form-group" id="GVPB">
      			<label>PHẢN BIỆN </label>
      				<select class='form-control'>
      				</select> 		  				
   			</div>
   			<div class="form-group">
      			<label>ỦY VIÊN</label>
     			<input type="text" list="DSUV" name="UV" class="form-control" placeholder="Chọn vị trí ủy viên " >
     				<datalist id="DSUV">
			  		</datalist>
   			</div>
			<div class="form-group">
      			<label>CHỦ TỊCH HĐ</label>
     			<input type="text" list="DSCT" name="CTHD" class="form-control" placeholder="Chọn chủ tịch hội đồng " >
     				<datalist id="DSCT">
			  		</datalist>
   			</div>
   			<div class="form-group">

      			<label>NGÀY BẢO VỆ</label>
     			<input type="text" list="DSNT" name="NBV" class="form-control" placeholder="Chọn ngày bảo vệ khóa luận" >
     				<datalist id="DSNT">
						 <c:forEach items="${items4.rows}"  var="row">	
							<option value="${row.IDP}" >${row.NgayTrong}</option>				
					</c:forEach>		    
			  		</datalist>
   			</div>
   			<div class="form-group">
      			<label>TÊN PHÒNG:</label>
     			<input type="text" list="DSPT" name="TP" class="form-control" placeholder="Chọn phòng " >
     				<datalist id="DSPT">
						<c:forEach items="${items2.rows}"  var="row">	
							<option value="${row.HoTen}">	
										
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
 
<script type="text/javascript">
	function ChonDT(){
		var val=document.getElementById('CDT').value;
		var xhttp=new XMLHttpRequest();
		xhttp.onreadystatechange=function()
		{
			if(xhttp.readyState===4 && xhttp.status===200)
			{
					document.getElementById('GVHD').innerHTML=xhttp.responseText;
			}
				
		};
		xhttp.open("POST","GvhdServlet?valajax="+val,true);
		xhttp.send();
}	 
</script>
<script type="text/javascript">
function ChonHD(){
	var val=document.getElementById('HD').value;
	var xhttp=new XMLHttpRequest();
	xhttp.onreadystatechange=function()
	{
		if(xhttp.readyState===4 && xhttp.status===200)
		{
				document.getElementById('GVPB').innerHTML=xhttp.responseText;
		}
			
	};
	xhttp.open("POST","GvpbServlet?valajax="+val,true);
	xhttp.send();
}	 
</script>		
</body>
</html>