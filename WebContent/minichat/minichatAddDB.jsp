<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.MinichatDAO"%>

<%
request.setCharacterEncoding("UTF-8");

String id = (String) session.getAttribute("id");
String ccontent = request.getParameter("ccontent");

MinichatDAO dao = new MinichatDAO();

if(dao.insert(id, ccontent)) {
	out.print("<script>location.href='/main.jsp';</script>");
}else {
	out.print("조졌네");
}






%>