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
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String nickname = request.getParameter("nickname");
	String date = request.getParameter("date");
	String tel = request.getParameter("tel");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	
	int check = -1;
	
	if(check==-1){
		check = memberDAO.instance.checkDoubleId(id);
		if(check==1){
			%>
			<script>
				alert("아이디 중복입니다.");
				history.go(-1);
			</script>
			<%
		}else{
			check = memberDAO.instance.checkDoubleEmail(email);
			if(check==2){
				%>
				<script>
					alert("이메일 중복입니다.");
					history.go(-1);
				</script>
				<%
			}else{
				memberDAO.instance.insertMember(id, pw, name, nickname, date, tel, address, email);
				%>
				<script>
				alert("회원가입이 완료되었습니다.");
				location.href="00_main.jsp";
				</script>
				<% 
			}
		}
	}
			
	%>
</body>
</html>