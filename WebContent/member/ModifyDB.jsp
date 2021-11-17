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
	String id = (String) session.getAttribute("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	

	MemberDAO dao = new MemberDAO();
	
	//데이터처리 : 1-수정완료, 0-비번오류, -1-아이디없음

	int result = dao.modifyMember(id,password,gender,birth,email,phone,address);
	
	if(result == 1){
		%>
		<script type="text/javascript">
		alert("회원정보수정 성공");
		location.href='/index.html';
		</script>
		<%
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