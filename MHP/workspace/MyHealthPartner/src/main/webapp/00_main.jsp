<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인화면</title>
<%
request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
<%
	String center=request.getParameter("center");

	if(center==null){
		center="03_center.jsp";
	}

%>

	<div align="center">
		<jsp:include page="01_top.jsp"/>
		<jsp:include page="<%=center %>"/>
		<jsp:include page="02_bottom.jsp"/>
	</div>
</body>
</html>