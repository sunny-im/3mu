<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="dao.NoticeDAO"%>


<%
	request.setCharacterEncoding("UTF-8");

	String ntitle = request.getParameter("ntitle");
	String notice = request.getParameter("notice");
	NoticeDAO dao = new NoticeDAO();
	
	if(dao.insert(ntitle, notice)) {
		out.print("<script>alert('공지사항 등록 성공!!'); location.href='/notice/n-board.jsp';</script>");
	}else {
		out.print("에러발생!");
	}

%>