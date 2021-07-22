<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
request.setCharacterEncoding("UTF-8");
%>
<title>Insert title here</title>
</head>
<body>

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
</body>
</html>