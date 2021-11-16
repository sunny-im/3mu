<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">비밀번호 찾기</h1>
	</div>
</div>
<div class="body-container container">
	<form action="/member/ps_searchDB.jsp" method = "POST">
		<div class = "find-name">
		<label>회원가입 아이디
			<input type="text" name="id" placeholder="가입한 아이디" required>
		</label>
		</div>
		<div  class="form-group  row"> 비번찾기 질문
			<select name="quiz">
				<option value="1">나의 보물 1호는?</option>
				<option value="2">나의 출생지는?</option>
				<option value="3">뭘 넣으면 좋을까?</option>
				<option value="4">진짜 지쟈스크라이스트다?</option>
			</select>
		</div>
		<div  class="form-group  row">
			<label> 비번찾기 답변
				<input type="text" name="answer" maxlength="10" placeholder="비밀번호 찾기 답변" >
			</label>
		</div>
		<div class ="btnSearch">
				<input class="btn btn-default" type="submit" name="enter" value="찾기">
		</div>
	</form>
</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>