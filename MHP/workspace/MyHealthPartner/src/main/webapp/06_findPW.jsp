<%@page import="mhp.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String tel = request.getParameter("tel");
	
	String pw = memberDAO.instance.findPw(name, id, tel);
	
	if(pw!=null){
		%>
		<script>
			alert("회원님의 패스워드는 <%= pw %>입니다.");
			location.href="04_login.jsp"
		</script>
		<%
		
	}else{
		%>
		<script>
			alert("해당하는 회원정보가 존재하지 않습니다.");
			history.go(-1);
		</script>
		<%
	}
%>
</body>
</html>