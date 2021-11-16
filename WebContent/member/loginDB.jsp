<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String cid = request.getParameter("id");
	String cpass = request.getParameter("pass");
	MemberDAO dao = new MemberDAO();
	int code = dao.login(cid, cpass);
	
	if (code == 1) {
		out.print("<script>alert('아이디가 존재하지 않습니다.'); location.href='join.jsp'; </script>");
	} else if (code == 2) {
		out.print("<script>alert('비밀번호가 틀렸습니다.'); location.href='login.jsp'; </script>");
	} else {
		session.setAttribute("id", cid);
		out.print("<script>alert('" + cid + "님 환영합니다!'); location.href='/main.jsp'; </script>");
	}
 
%>