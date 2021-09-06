<%@page import="java.util.ArrayList"%>
<%@page import="mhp.BbsDAO"%>
<%@page import="mhp.bbs"%>
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
    <script type="text/javascript">

        // 로그아웃 담당 JSP로 이동
        function logoutPro(){
            location.href="04_logoutPro.jsp";
        }
    </script>
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
	<%
		String id = (String)session.getAttribute("id");
		if(id==null){		
	%>
		<form action="04_loginPro.jsp" method="post" class="loginForm">
		    <h2>Login</h2>
			    <div class="idForm">
				    <input type="text" name="id" class="id" placeholder="ID">
				</div>
				<div class="passForm">
					<input type="password" name="pw" class="pw" placeholder="PW">
				</div>
				<input type="submit" class="btn" value="LOG IN">
				<script>
					let button = () => {
				    	alert('login Button !')
				    }
				</script>
				<div class="bottomText">
					Don't you have ID? <a href="05_newlogin.jsp">sign up</a>
			    </div>
	    </form>
    <%
		}else{
    %>
    	<%=id %>님 반갑습니다.
    	<input type="button" value="로그아웃" onclick="logoutPro()" />
    <%
		}
    %>
	</div>

	<div align=center class="container2">
<%
		String bbsID = (String)session.getAttribute("bbsID");
		String bbsTitle = (String)session.getAttribute("bbsTitle");
		String bbsDate = (String)session.getAttribute("bbsDate");
		
%>
		
		<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
			<thead>
				<tr>
					<th style="background-color: #eeeeee; text-align: center;">번호</th>
					<th style="background-color: #eeeeee; text-align: center;">제목</th>
					<th style="background-color: #eeeeee; text-align: center;">작성자</th>
					<th style="background-color: #eeeeee; text-align: center;">작성일</th>
				</tr>
			</thead>
			<tbody>
					<%
					int pageNumber = 1; // 기본 페이지
					if (request.getParameter("pageNumber") != null) {
						pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
					}
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<bbs> list = bbsDAO.getlist(pageNumber);
						for(int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%= list.get(i).getBbsID() %></td>
						<td><a href="07_writeform.jsp?bbsID=<%= list.get(i).getBbsID() %>">
							<%= list.get(i).getBbsTitle() %></a></td>
						<td><%= list.get(i).getid() %></td>
						<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) 
							+ "시 " + list.get(i).getBbsDate().substring(14, 16) + "분 " %></td>
					</tr>
					<%
						}
					%>
			</tbody>
		</table>
		<input type="button" onClick="location.href='08_write.jsp'" class="btn btn-primary pull-right" style="positon:relative; text-align:center; width:60pt;height:30pt;" value="글쓰기">
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
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>

</body>
</html>
