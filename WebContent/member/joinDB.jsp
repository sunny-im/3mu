<%@page import="dao.MemberDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pass = request.getParameter("password");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");	
	 
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String quiz = request.getParameter("quiz");
	String answer = request.getParameter("answer");
	MemberDAO dao = new MemberDAO();
	
	
	if (dao.join(id, pass, name, gender, birth, mail, phone, address, quiz, answer)) {
		out.print("<script>alert('회원가입 성공!'); location.href='/index.html'; </script>");
	}else{
		out.print("<script>alert('회원가입 실패!'); location.href='signup.jsp'; </script>");
	}
%>    