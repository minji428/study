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
  max-width: 10000px;
  max-height: 750px;
  position: relative;
  margin: auto;
}
.slideshow-container .mySlides img {
  width : 750px;
  height: 100px;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
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
}

@-webkit-keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}
</style>
<title>Insert title here</title>
</head>
<body>
<table>
    <div class="slideshow-container">

      <!-- Full-width images with number and caption text -->
      <div class="mySlides fade">
        <div class="numbertext">1 / 6</div>
        <img src="img/1.jpg" width="50" height="3">
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">2 / 6</div>
        <img src="img/2.jpg" width="50" height="3">
        <div class="text">ACNE STUDIO</div>
      </div>

      <div class="mySlides fade">
        <div class="numbertext">3 / 6</div>
        <img src="img/3.jpg" width="50" height="10">
        <div class="text">ACNE STUDIO</div>
      </div>
      <!-- Next and previous buttons -->
      <a class="prev" onclick="moveSlides(-1)">&#10094;</a>
      <a class="next" onclick="moveSlides(1)">&#10095;</a>
    </div>
    <br/>

    <!-- The dots/circles -->
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(0)"></span>
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
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


</table>




<%-- 
<img src="img/m1.jpg" id=mainImage alt="slide"/>

<script>
	var myImage = document.getElementById("mainImage");
	var imageArray = [ "img/m1.jpg",
			"img/m2.jpg", "img/m3.jpg" ];
	var imageIndex = 0;

	function changeImage() {
		myImage.setAttribute("src", imageArray[imageIndex]);
		imageIndex++;
		if (imageIndex >= imageArray.length) {
			imageIndex = 0;
		}
	}
	setInterval(changeImage, 3000);
</script>



--%>























<%--
<%
String id=(String)session.getAttribute("id");
String managerId=(String)session.getAttribute("managerId");

String name="";
%>
		<div align="right">
			<font size="2">
			<%
			if(id==null && managerId==null){
				%>
			<a href = "00_main.jsp?center" style="text-decoration: none">회원가입</a>&nbsp;
			<img alt="" src="img/top1.jpg"> &nbsp;
			<a href = "00_main.jsp?center" style="text-decoration: none">로그인</a>&nbsp;
				
				<%
			}else{
				if(id!=null){
					System.out.println("로그인 아이디 확인용 = " + name);
					%>
					<%=name %>님 &nbsp;  <img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_main.jsp?center=" style="text-decoration: none">주문확인</a>&nbsp;
					<%
				}else if(managerId!=null){
					%>
					<%=name %>님 &nbsp;  <img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_main.jsp?center=" style="text-decoration: none">상품수정</a>&nbsp;
					<img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_main.jsp?center=" style="text-decoration: none">주문확인</a>&nbsp;
					<%
				}
				%>
					<img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "06_logout.jsp" style="text-decoration: none">로그아웃</a>&nbsp;
				<%
			}
			%>
					<img alt="" src="img/top1.jpg"> &nbsp;
					<a href = "00_main.jsp?center=" style="text-decoration: none">고객센터</a>&nbsp;
			</font>
		</div>
--%>
</body>
</html>