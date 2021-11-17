<%@page import="dao.MemberDAO"%>
<%@page import="dao.MemberObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<%@ include file = "/header.jsp" %>
<div class="jumbotron">
  <div class="container">
    <h2 class="display-3">회원정보 수정<img src="/img/logo01.png" height="100"></h2>
  </div>
</div>
<%
	MemberObj member = (new MemberDAO()).getDetail(id);
%>

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="ModifyDB.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" value="<%=id %>" readonly >
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
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
				<input name="name" type="text" class="form-control" value="<%=member.getName() %>" readonly>
				</div>
			</div>
			
			<div class="form-group  row">
				<label class="col-sm-2">성별</label>
					<div class="col-sm-4">
			<div class="btn-group" data-toggle="buttons">
				
					<%
					if(member.getGender().equals("남")){
					%>
						<label for="men"class="btn btn-primary active">
							<input id="men"type="radio" name="gender" autoComplete="off" value="남" checked>남
						</label>
					<% }else {%>
						<label for="men" class="btn btn-primary">
							<input id="men"type="radio" name="gender" autoComplete="off" value="남" checked>남
						</label>
					<%}%>
				
					<%
					if(member.getGender().equals("여")){ 
					%>
						<label for="women"class="btn btn-primary active">
							<input id="women"type="radio" name="gender" autoComplete="off" value="여" checked>여
						</label>
					<%}else {%>
						<label for="women"class="btn btn-primary">
							<input id="women"type="radio" name="gender" autoComplete="off" value="여" checked>여
						</label>
					<%}%>
				
				</div>
			</div><br><br>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">생년월일</label>
				<div class="col-sm-3">
				<input name="birth" type="text" class="form-control" placeholder="birth" value="<%=member.getBirth() %>">
			</div>
			</div>
			<div class="form-group  row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-5">
				<input type="text" name="email" class="form-control" placeholder="email" value="<%=member.getEmail() %>" >
					
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
				<input name="phone" type="text" class="form-control" placeholder="phone" value="<%=member.getPhone() %>">
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2 ">주소</label>
				<div class="col-sm-5">
				<input name="address" type="text" class="form-control" placeholder="address" value="<%=member.getAddress() %>">
				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
				<input type="submit" class="btn btn-dark" value="수정완료">
		        <input type="button" value="탈퇴하기" class="btn btn-dark" onClick="location.href='DeleteDB.jsp?id=<%=member.getId() %>'">


				</div>
			</div>
		</form>
	</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
<script type="text/javascript">
	function checkForm() {
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