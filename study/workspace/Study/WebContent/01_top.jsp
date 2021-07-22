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

		<div align="center">
			<h1><a href="00_main.jsp">나의 health 파트너</a></h1>
			<img src="img/logo.PNG" align="right" alt="로고이미지" height="80"> 
		</div>
		<br>
		<div align="center">
			<table>
				<tr height="50">
					<td width = "180" align = "center" id="dropdown">
						<font size="3" color="black"><a href = "00_main.jsp?center=" style="text-decoration: none"><b>추천운동</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "00_main.jsp?center=" style="text-decoration: none"><b>헬스</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "00_main.jsp?center=" style="text-decoration: none"><b>골프</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "00_main.jsp?center=" style="text-decoration: none"><b>수영</b></a></font>
					</td>
					<td width="10" align = "center">
						<img alt="" src="img/top1.jpg">
					</td>
					
					<td width = "180" align = "center">
						<font size="3" color="black"><a href = "#" style="text-decoration: none"><b>이벤트</b></a></font>
					</td>
				</tr>
			</table>
		</div>
</body>
</html>