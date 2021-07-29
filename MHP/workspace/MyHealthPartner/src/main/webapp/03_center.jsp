<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
%>
<link rel="stylesheet" href="css/center.css">
<link rel="stylesheet" href="css/login.css">
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
	    
	<!-- 로그인 -->
	<div class="container">
		<form action="04_loginPro.jsp" method="post" class="loginForm">
		    <h2>Login</h2>
			    <div class="idForm">
				    <input type="text" class="id" placeholder="ID">
				</div>
				<div class="passForm">
					<input type="password" class="pw" placeholder="PW">
				</div>
				<input type="submit" class="btn" value="LOG IN">
				<script>
					let button = () => {
				    	alert('login Button !')
				    }
				</script>
				<div class="bottomText">
					Don't you have ID? <a href="00_main.jsp?center=05_newlogin.jsp">sign up</a>
			    </div>
	    </form>
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
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<br>
<br>
<br>
<br>
<br>

</body>
</html>