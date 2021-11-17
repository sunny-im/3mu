<%@page import="dao.BoardDAO"%>
<%@page import="dao.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>Board</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "/header.jsp" %>
<div class="jumbotron">
		<div class="container" style="display:flex;">
			<h2 class="display-3">자유게시판</h2>
			<img src="/img/logo05.png" height="100">
		</div>
	</div>

		<%
			ArrayList<BoardObj> boards = (new BoardDAO()).getList();
		%>
	<div class="body-container container">
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">날짜</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (BoardObj board : boards) {
				%>
				<tr>
					<th scope="row"><%=board.getFno()%></th>
					<td><a href="FreeBoardView.jsp?id=<%=board.getFno()%>"
						style="text-decoration-line: none; color: dark-blue;"><%=board.getFtitle()%></a></td>
					<td><%=board.getId()%></td>
					<td><%=board.getFdate()%></td>
					<td><a href="FreeBoardView.jsp?id=<%=board.getFno()%>"
						class="btn btn-dark" role="button">게시글 확인 &raquo;</a></td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>
		<div class="col-sm-offset-10 col-sm-2">
			<!-- <button type="button" class="btn btn-dark" type="submit">Write</button> -->
			<input type="button" onClick="location.href='FreeBoard.jsp'"
				class="btn btn-dark" value="글쓰기">
		</div>
	</div>
	
	<%@ include file = "/footer.jsp" %>	
</body>
</html>