<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="dao.MReplyDAO"%>
    
<%
	request.setCharacterEncoding("UTF-8");

	String mno = request.getParameter("mno");
	String id = request.getParameter("id");
	String content = request.getParameter("content");
	
	MReplyDAO dao = new MReplyDAO();
	
	if(dao.insertreply(mno, id, content)) {
		out.print("<script>alert('댓글작성 성공!'); location.href='/buy-sell/m-boardDetail.jsp?mno="+ mno+ "'; </script>");
	}else {
		out.print("<script>alert('댓글작성 실패!'); location.href='/buy-sell/m-boardDetail.jsp?mno="+ mno+ "'; </script>");
	}


%>