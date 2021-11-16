<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String cid = request.getParameter("id");
	String quiz = request.getParameter("quiz");
	String answer = request.getParameter("answer");
	
	MemberDAO dao = new MemberDAO();
	String pw = dao.findPW(cid, quiz, answer);
%>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">비밀번호 찾기</h1>
	</div>
</div>
<div class="body-container container">
<%if(pw != null) { %>
<div>
	<h1>회원님의 비밀번호는 <%=pw %> 입니다.</h1>
</div>



<%} else { %>
<div>
	<h1>일치하는 정보가 없습니다.</h1>
</div>

<%} %>
</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>