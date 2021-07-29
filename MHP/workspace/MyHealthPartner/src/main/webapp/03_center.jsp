<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
%>
<style>
	* {
	  margin: 0;
	  padding: 0;
	  box-sizing:border-box;
	}
	/* Slideshow container */
	.slideshow-container {
	  width: 800px;
	  height: 170px;
	  margin: auto;
	}
	.slideshow-container .mySlides img {
	  width : 800px;
	  height: 200px;
	}
	/* Hide the images by default */
	.mySlides {
	  display: none;
	}
	/* On hover, add a black background color with a little bit see-through */
	.prev:hover, .next:hover {
	  background-color: rgba(0,0,0,0.8);
	}
	/* Caption text */
	.text {
	  color: #f2f2f2;
	  font-size: 15px;
	  padding: 8px 12px;
	  position: absolute;
	  bottom: 8px;
	  width: 100%;
	  text-align: center;
	}
	/* Number text (1/3 etc) */
	.numbertext {
	  color: #f2f2f2;
	  font-size: 12px;
	  padding: 8px 12px;
	  position: absolute;
	  top: 0;
	}
	/* The dots/bullets/indicators */
	.dot {
	  cursor: pointer;
	  height: 15px;
	  width: 15px;
	  margin: 0 2px;
	  background-color: #bbb;
	  border-radius: 50%;
	  display: inline-block;
	  transition: background-color 0.6s ease;
	  position:relative;
	  left:-150px;
	  top:0px
	}
	.active, .dot:hover {
	  background-color: #717171;
	}
	/* Fading animation */
	.fade {
	  -webkit-animation-name: fade;
	  -webkit-animation-duration: 1.5s;
	  animation-name: fade;
	  animation-duration: 1.5s;
	  position:relative;
	  left:-150px;
	  top:0px
	}
	@-webkit-keyframes fade {
	  from {opacity: .4}
	  to {opacity: 1}
	}
	@keyframes fade {
	  from {opacity: .4}
	  to {opacity: 1}
	}
	
	.container{
		position:relative;
		left:400px;
		top:-150px;
	}
</style>
<title>Insert title here</title>
</head>
<body>

    <div class="slideshow-container">
      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext">1 / 4</div>
        <img src="img/1.jpg" width="50" height="3">
        <div class="text">MY HEALTH PARTNER</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 4</div>
        <img src="img/2.jpg" width="50" height="3">
        <div class="text">MY HEALTH PARTNER</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 4</div>
        <img src="img/3.jpg" width="50" height="10">
        <div class="text">MY HEALTH PARTNER</div>
      </div>
      
      <div class="mySlides fade">
        <div class="numbertext">4 / 4</div>
        <img src="img/4.jpg" width="50" height="10">
        <div class="text">MY HEALTH PARTNER</div>
      </div>
    </div>
    <br/>
	
    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
    </div>

	<div class="container">
		<div class="col-lg-4"></div>
		    <div class="col-lg-4">
		        <div class="jumbotron" style="padding-top : 20px;">         <!--  부트트랩 -->
		        <form method="post" action="loginAction.jsp">
		            <div class="form-group">
		                <input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20">
		            </div>
		                <div class="form-group">
		                <input type="password" class="form-control" placeholder="비밀번호" name="userPasssword" maxlength="20">
		            </div>
		            <input type="submit" class="btn btn-primary form-control" value="로그인">
		            <button onclick="location.href='00_main.jsp?center=05_newlogin.jsp'">회원가입</button>
		        </form>
		    </div>
		    <div class="col-lg-4"></div>
		</div>
	</div>


<script>
	var slideIndex = 0; //slide index
	//HTML 로드가 끝난 후 동작
	window.onload=function(){
	showSlides(slideIndex);
	// Auto Move Slide
	var sec = 3000;
	setInterval(function(){
	 slideIndex++;
	 showSlides(slideIndex);
	}, sec);
	}
	//Next/previous controls
	function moveSlides(n) {
	slideIndex = slideIndex + n
	showSlides(slideIndex);
	}
	//Thumbnail image controls
	function currentSlide(n) {
	slideIndex = n;
	showSlides(slideIndex);
	}
	function showSlides(n) {
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("dot");
	var size = slides.length;
	if ((n+1) > size) {
	 slideIndex = 0; n = 0;
	}else if (n < 0) {
	 slideIndex = (size-1);
	 n = (size-1);
	}
	for (i = 0; i < slides.length; i++) {
	   slides[i].style.display = "none";
	}
	for (i = 0; i < dots.length; i++) {
	   dots[i].className = dots[i].className.replace(" active", "");
	}
	slides[n].style.display = "block";
	dots[n].className += " active";
	}
</script>

</body>
</html>