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
		<div class="container">
			<h2 class="display-3">자유게시판<img src="/img/logo05.png" height="100"></h2>
		</div>
	</div>

		<%
			ArrayList<BoardObj> boards = (new BoardDAO()).getList();
		%>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col"></th>
					<th scope="col">Title</th>
					<th scope="col">Author</th>
					<th scope="col">Date</th>
				</tr>
			</thead>
			<tbody>
				<%
				for (BoardObj board : boards) {
				%>
				<tr>
					<th scope="row"><%=board.getFno()%></th>
					<td><a href="FreeBoardView.jsp?id=<%=board.getFno()%>"
						style="text-decoration-line: none; color: black;"><%=board.getFtitle()%></a></td>
					<td><%=board.getId()%></td>
					<td><%=board.getFdate()%></td>
					<td><a href="FreeBoardView.jsp?id=<%=board.getFno()%>"
						class="btn btn-dark" role="button">View &raquo;</a></td>
				</tr>

				<%
				}
				%>

			</tbody>
		</table>
		<div class="col-sm-offset-10 col-sm-2">
			<!-- <button type="button" class="btn btn-dark" type="submit">Write</button> -->
			<input type="button" onClick="location.href='FreeBoard.jsp'"
				class="btn btn-dark" value="WRITE">
		</div>
	</div>
	<%@ include file = "/footer.jsp" %>	
</body>
</html>