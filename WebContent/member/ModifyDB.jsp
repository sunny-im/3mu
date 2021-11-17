<%@page import="dao.MemberDAO"%>
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
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	MemberDAO dao = new MemberDAO();
	
	//데이터처리 : 1-수정완료, 0-비번오류, -1-아이디없음

	int result = dao.modifyMember(id,password);
	
	if(result == 1){
		%>
		<script type="text/javascript">
		alert("회원정보수정 성공");
		</script>
		<%
		response.sendRedirect("main.jsp");
	}else if(result == 0){
		%>
		<script type="text/javascript">
		alert("비밀번호오류로 회원정보수정실패");
		history.back();
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("존재하지않는 아이디입니다.");
		history.back();
		</script>
		<%
	}
%>
</body>
</html>