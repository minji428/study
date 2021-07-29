<%@page import="mhp.memberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	int check=memberDAO.instance.userCheck(id, pw);
	
	if(check==1){
		session.setAttribute("id", id);
		response.sendRedirect("00_main.jsp");
	}else{
	%>
		<script>
		alert("회원 아이디 또는 패스워드가 틀립니다.");
		location.href='04_login.jsp';
		</script>
	<%
	}
%>
</body>
</html>