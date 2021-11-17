<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.NoticeDAO"%>

<%
	String nid = request.getParameter("nid");

	NoticeDAO dao = new NoticeDAO();
	
	if(dao.del(nid)) {
		out.print("<script>alert('공지사항 삭제 완료!'); location.href='/notice/n-board.jsp';</script>");
	}




%>