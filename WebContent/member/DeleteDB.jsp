<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
	String a = request.getParameter("id");

	MemberDAO member = new MemberDAO();
	int code = member.delete(a);

	
	if (code == 1) {
		session.invalidate();
		out.print("<script>alert('회원 탈퇴가 완료되었습니다.'); location.href='/main.jsp'; </script>");
	} else {
		out.print("<script>alert('다시 시도해주세요.'); location.href='/main.jsp'; </script>");
	}
	%>
