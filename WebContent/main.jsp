<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>메인페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<style>
.jumbotron {
	padding: 0;
	margin: 0;
}
</style>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>

<!-- 메인 영역입니다. -->
<div class="jumbotron">
	<div class="container" style="display:flex;">
		<h1 class="display-3">Welcome ssammoo 마켇</h1>
		<img src="/img/logo05.png" height=250>
		
	</div>
</div>
<div class="grid_container">
	<main class="col-md-12">
		<div>
			<h3>공지사항</h3>
			<table class="table table-condensed .table-hover">
				<tr>
					<th style="width:10%">번호</th>
					<th style="width:60%">제목</th>
					<th style="width:30%">날짜</th>
				</tr>
				<%
				ArrayList<NoticeObj> notices = (new NoticeDAO()).getlist();
				int i = 0;
				for(NoticeObj notice : notices) {
				%>
				<tr>
					<td><%=notice.getNid() %></td>
					<td><a href="./notice/n-boardDetail.jsp?nid=<%=notice.getNid() %>"><%=notice.getNtitle() %></a></td>
					<td><%=notice.getNtime().substring(0,10) %></td>
				</tr>
				<%	
					if(i == 4) break;
					i += 1;
				
				} %>
			</table>
		</div>
		<div>
			<h3>쌈무마켙</h3>
			<table class="table table-condensed .table-hover">
				<tr>
					<th style="width:5%">번호</th>
					<th style="width:10%">말머리</th>
					<th style="width:55%">제목</th>
					<th style="width:10%">작성자</th>
					<th style="width:20%">날짜</th>
				</tr>
				<%
				if(id != null){
					ArrayList<MBoardObj> mboards = (new MBoardDAO()).getlist();
					int j = 0;
					for (MBoardObj mboard : mboards) {
				%>
				<tr>
					<td><%=mboard.getMno() %></td>
					<td><%=mboard.getMsub() %></td>
					<td><a href="./m-boardDetail.jsp?mno=<%=mboard.getMno() %>"><%=mboard.getMtitle() %></a></td>
					<td><%=mboard.getId() %></td>
					<td><%=mboard.getMtime().substring(0,10) %></td>
				</tr>
				<%
						if(j==4) break;
						j += 1;
				
				}}else {
				%>
				<tr>
					<th colspan=5><h3>로그인이 필요합니다 :)</h2></th>
				</tr>
				<%} %>
			</table>
		</div>
	</main>
	<aside class="">
		<h3>게시판 타임라인</h3>
		<div class="mini-board aside-container">
			<table class="table table-condensed">
				<tr>
					<th style="width: 10%;"></th>
					<th style="width: 60%;"></th>
					<th style="width: 30%;"></th>
				</tr>
				<%@include file="/minichat/minichat.jsp" %>
			</table>
		</div>
		<%if(id != null){ %>
		<form action="/minichat/minichatAddDB.jsp" method="post">
			<input type="text" name="ccontent" class="">
			<input type="submit" class="btn btn-default" >
		</form>
		<%} %>
	</aside>
</div>


<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>