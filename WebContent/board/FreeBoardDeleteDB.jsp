<%@ page import = "dao.*" %>
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
	/* int code = dao.delete(a); */

	
	if (dao.delete(fno)) {
	response.sendRedirect("FreeBoardList.jsp");
	} else {
		response.sendRedirect("FreeBoard.jsp");
	}
%>

</body>
</html>