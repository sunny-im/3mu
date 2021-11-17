<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>회원 가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>

<jsp:include page="/header.jsp" />
<div class="body-container">
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">회원 가입</h1>
			</div>
		</div>

		<div class="container">
		
		<form name="newMember" class="form-horizontal"  action="joinDB.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
					<div class="col-sm-3">
						<input name="id" type="text" class="form-control" placeholder="id" >
					</div>
			</div>
		<div class="form-group  row">
			<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="password" class="form-control" placeholder="password" >
				</div>
		</div>
		
		<div class="form-group  row">
			<label class="col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="password" class="form-control" placeholder="password confirm" >
				</div><br>
		</div>
		
		<div class="form-group  row">
			<label  class="col-sm-2">비밀번호 찾기 질문</label>
				<div class="col-sm-3"> 
				<select class= "form-control" name="quiz">
					<option value="1">나의 보물 1호는?</option>
					<option value="2">나의 출생지는?</option>
					<option value="3">나의 별명은?</option>
				</select>
				</div> 
		</div>
		<div class="form-group  row">
			<label class="col-sm-2">답변</label>
				<div class="col-sm-3">
					<input name="answer" type="text" class="form-control" placeholder="answer" >
				</div><br>
		</div>
		<div class="form-group  row">
			<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="name" >
				</div>
		</div>
			
		<div class="form-group  row">
			<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<input name="gender" type="radio" value="남" /> 남 
					<input name="gender" type="radio" value="여" /> 여
				</div>
		</div>
			
		<div class="form-group row">
			<label class="col-sm-2">생일</label>
				<div class="col-sm-3">
					<input name="birth" type="text" class="form-control" placeholder="YYMMDD" > 
				</div>
		</div> 
			
		<div class="form-group  row ">
			<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input name="mail" type="text" class="form-control" placeholder="e-mail" >
				</div>				
		</div>
			
		<div class="form-group  row">
			<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<input name="phone" type="text" class="form-control" placeholder="phone" >
				</div>
		</div>
			
		<div class="form-group  row">
			<label class="col-sm-2 ">주소</label>
				<div class="col-sm-5">
					<input name="address" type="text" class="form-control" placeholder="address">
				</div>
		</div><br><br>
			
		<div class="form-check">
	    	<input type="checkbox" class="form-check-input" id="same-address">
	        <label class="form-check-label" for="same-address">쇼핑몰 이용약관에 동의합니다.</label>
         </div>
	
          <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">개인정보 처리방침에 동의합니다.</label>
          </div>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록 " > 
					<input type="button" class="btn btn-primary" value="취소 " onclick="history.back(-1)" >
				</div>
			</div>
	</form>
</div>
</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
<script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		} 
		if (!document.newMember.password.value) {
			alert("패스워드를 입력하세요.");
			return false;
		}
		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀 번호를 동일하게 입력하세요");
			return false;
		}
	}
</script>
</body>
</html>