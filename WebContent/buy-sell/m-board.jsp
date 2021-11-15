<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "dao.*" %>
<%@ page import="java.util.ArrayList"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Market-Place</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="body-container container">
<table class="table table-striped">
	<thead>
		<tr>
			<th>번호</th>
			<th>말머리</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
	</thead>
	<tbody>
	<%
	ArrayList<MBoardObj> mboards = (new MBoardDAO()).getlist();
	
	for (MBoardObj mboard : mboards) {
		String img = mboard.getMimg();
	
	%>
		<tr>
			<td><%=mboard.getMno() %></td>
			<td><%=mboard.getMsub() %></td>
			<td><a href="./m-boardDetail.jsp?mno=<%=mboard.getMno() %>"><%=mboard.getMtitle() %></a></td>
			<td><%=mboard.getId() %></td>
			<td><%=mboard.getMtime() %></td>
		</tr>
<%} %>
	</tbody>
	<tfoot>
		<tr>
			<td colspan=5><a class="btn btn-default" href="/buy-sell/m-boardadd.jsp"> 글쓰기</a></td>
		</tr>
	</tfoot>
</table>







</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>