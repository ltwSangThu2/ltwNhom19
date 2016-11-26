<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="customDiv.css" rel="stylesheet">
  <style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #01ada0;
}

li {
    display: inline-block;
	float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    font-weight:bold;
    font-size: 150%;
}

li a:hover {
    background: #fdffff;
	transition: all 0.40s;
}

</style>
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
	<div>
		<img src="Images/logo-news.png" />
	</div>

    <ul>
   		 <li>
      		<a href="#dnTab" data-toggle="tab">Đăng Nhập</a>
      	</li>
      	<li>
      		<a href="#hdTab" data-toggle="tab">Hướng Dẫn</a>
     	 </li>
    </ul>
  
 
<div class="container">
	<div id="dnTab" class="tab-pane fade ">
  		<div class="btn btn-lg ">
    		<a href="#" onclick="loadLogin()" class="btn btn-warning">LOGIN</a>
   		 </div>
   	</div>
  	<div id="hdTab" class="tab-pane fade ">
  		 
  	</div>
</div>
 <div class="container">
     <div class="row">
        <div id="footer">
        <hr>
            <h5 class="text-center text-danger">Khoa Công nghệ Thông tin - Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh</h5>
            <h5 class="text-center text-danger">Số 1, Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh</h5>
        </div>
    </div>   
 </div>
<script language = "javascript">					
				function loadLogin() {
					$("#dnTab").load("login.jsp");
					    };		
					
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
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
</body>
</html>

