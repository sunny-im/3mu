<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MBoardDAO"%>

<%
	String mno = request.getParameter("mno");

	MBoardDAO dao = new MBoardDAO();
	
	if(dao.del(mno)) {
		out.print("<script>alert('게시글 삭제 완료!'); location.href='/buy-sell/m-board.jsp';</script>");
	}



%>