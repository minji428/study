<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mhp.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs" class="mhp.bbs" scope="page" />
<jsp:setProperty name="bbs" property="bbsTitle" />
<jsp:setProperty name="bbs" property="bbsContent" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
    <%
        String id = null;
        if (session.getAttribute("id") != null) {
            id = (String) session.getAttribute("id");
        }
        if(id == null) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 하세요.')");
            script.println("location.href = '04_login.jsp'");
            script.println("</script>");
        } else {
            if (bbs.getBbsTitle() == null || bbs.getBbsContent() == null) {
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("alert('입력하지 않은 사항이 있습니다.')");
                    script.println("history.back()");
                    script.println("</script");
                } else {
                    BbsDAO bbsDAO = new BbsDAO();
                    int result = bbsDAO.write(bbs.getBbsTitle(), id, bbs.getBbsContent());
                    if (result == -1) {
                        PrintWriter script = response.getWriter();
                        script.println("<script>");
                        script.println("alert('글쓰기에 실패했습니다.')");
                        script.println("history.back()");
                        script.println("</script>");
                    }
                    else {
                        PrintWriter script = response.getWriter();
                        script.println("<script>");
                        script.println("location.href = '07_writeform.jsp'");
                        script.println("</script>");
                    }
                }
        }
    %>
</body>
</html>