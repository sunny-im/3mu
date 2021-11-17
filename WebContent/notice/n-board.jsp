<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "dao.*" %>
<%@ page import="java.util.ArrayList"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>Notice</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
	tbody>tr>td:nth-child(1) {
		width: 10%;
	}
	tbody>tr>td:nth-child(2) {
		width: 70%;
	}
	tbody>tr>td:nth-child(3) {
		width: 20%;
</style>
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="jumbotron">
		<div class="container">
			<h2 class="display-3">공지사항<img src="/img/logo04.png" height="100"></h2>
		</div>
	</div>
<div class="body-container container">
<table class="table table-striped">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>날짜</th>
		</tr>
	</thead>
	<tbody>
	<%
	ArrayList<NoticeObj> notices = (new NoticeDAO()).getlist();
	
	for (NoticeObj notice : notices) {
	
	%>
		<tr>
			<td><%=notice.getNid() %></td>
			<td><a href="./n-boardDetail.jsp?nid=<%=notice.getNid() %>"><%=notice.getNtitle() %></a></td>
			<td><%=notice.getNtime() %></td>
		</tr>
<%} %>
	</tbody>
	<tfoot>
		<tr>
		<%if("admin".equals(id)){ %>
			<td colspan=5><a class="btn btn-default" href="./n-boardAdd.jsp"> 글쓰기</a></td>
		<%} %>	
		</tr>
	</tfoot>
</table>







</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>