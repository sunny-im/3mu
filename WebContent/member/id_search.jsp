<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">아이디 찾기</h1>
			</div>
		</div>
<div class="body-container container">
	<form action="/member/id_searchDB.jsp" method = "POST">
		<div class = "find-name">
		<label>이름
			<input type="text" name="name" placeholder="등록한 이름" required>
		</label>
		</div>
		<div class = "find-phone">
		<label>번호
			<input type="text" name="phone" placeholder = "휴대폰번호를 '-'없이 입력">
		</label>
		</div><br>
		<div class ="btnSearch">
			<input class="btn btn-default" type="submit" name="enter" value="찾기">
		</div>
	</form>
</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>