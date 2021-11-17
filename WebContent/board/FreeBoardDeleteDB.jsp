<%@ page import = "dao.BoardDAO" %>
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
	String fno = request.getParameter("fno");

	BoardDAO dao = new BoardDAO();
	
	if (dao.delete(fno)) {
			out.print("<script>alert('게시글 삭제 완료!'); location.href='/board/FreeBoardList.jsp';</script>");
	} else {
		response.sendRedirect("FreeBoard.jsp");
	} 
%>

</body>
</html>