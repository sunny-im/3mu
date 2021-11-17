<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>Login SSAMMOOO</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">삼무마켓 로그인하기</h1>
			</div>
		</div>
	<div class="body-container container">
		<form class="form-signin" action="loginDB.jsp" method="post">
			<label for="inputEmail" class="sr-only">아이디</label>
			<input type="text" id="inputEmail" name="id" class="form-control" placeholder="ID 입력" required>
			<label for="inputPassword" class="sr-only">비밀번호</label>
			<input type="password" id="inputPassword" name="pass" class="form-control" placeholder="PW 입력" required>
			<button  type="submit" class="btn btn-default">로그인</button>
		</form>
			<a href="/member/join.jsp">회원가입</a> 
			<a href="/member/id_search.jsp">아이디 찾기</a>
			<a href="/member/ps_search.jsp">비밀번호 찾기</a>
	</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>