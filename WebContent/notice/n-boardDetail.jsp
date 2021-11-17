<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "dao.*" %>
<%@ page import="java.util.ArrayList"%>  
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	String nid = request.getParameter("nid");
	NoticeObj notices = (new NoticeDAO()).getDetail(nid);
	String cid = (String) session.getAttribute("id");
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/m-boardDetail.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="body-container container">
<div class="jumbotron">
	<h2 class="col-md-12 text-center">[공지사항] <%=notices.getNtitle() %></h2>
	<div class="col-md-12 text-center">
		<div class="col-md-4 col-md-offset-6"><small><%=notices.getNtime() %></small></div>
	</div>
	<div class="col-md-12 text-center"><%=notices.getNotice() %></div>
	<%if("admin".equals(cid)) {  %>
	<a href="/notice/n-boardDel.jsp?nid=<%=nid %>" class="delete btn btn-default">삭제</a>
	<%} %>
</div>
</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>