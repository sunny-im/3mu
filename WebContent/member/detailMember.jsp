<%@page import="dao.*"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
	<div class="alert alert-secondary" role="alert">
		<h3 class="display-3">회원 정보</h3>
	</div>
<%
	MemberObj member = (new MemberDAO()).getDetail(id);
%>

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="joinDB.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<%=member.getId() %>
				</div> 
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<%=member.getName() %>
				</div>
			</div>
		<%-- 	<div class="form-group  row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-10">
					<%=member.getCgender() %>
				</div>
			</div> --%>
<%-- 			<div class="form-group row">
				<label class="col-sm-2">생일</label>
				<div class="col-sm-4  ">
					<%=member.getCbirth() %>
				</div>
			</div> --%>
			<div class="form-group  row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<%=member.getEmail() %>
				</div>				
			</div>
			<div class="form-group  row">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-3">
					<%=member.getPhone() %>
				</div>
			</div>
			<div class="form-group  row">
				<label class="col-sm-2 ">주소</label>
				<div class="col-sm-5">
					<%=member.getAddress() %>

				</div>
			</div>
				<div class="form-group  row">
				<label class="col-sm-2 ">가입일</label>
				<div class="col-sm-5">
				

				</div>
			</div>
			<div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
				 <a href="ModifyForm.jsp" class="btn btn-dark" role="button">Update &raquo;</a>
         <a href="DeleteForm.jsp?id=<%=member.getId() %>" class="btn btn-dark" role="button">Delete &raquo;</a>
				</div>
			</div>
		</form>
	</div>



<%@ include file = "/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>