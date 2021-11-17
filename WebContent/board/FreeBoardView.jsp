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
<title>Board View</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<%@ include file = "/header.jsp" %>

	
	<%
		String a = request.getParameter("id");
		String fno = request.getParameter("fno");
		BoardObj board = (new BoardDAO()).getView(a);
		String fimage = board.getFimage();
		
	%>
<div class="body-container container">
<div class="jumbotron">
	<h2 class="col-md-12 text-center"> <%=board.getFtitle() %></h2>
	<div class="col-md-12 text-center">
		<div class="col-md-4 col-md-offset-2"><small>작성자 : <%=board.getId() %></small></div>
		<div class="col-md-4"><small><%=board.getFdate() %></small></div>
	</div>
	<div class="img"><img class="img-rounded center-block" src="/images/<%=fimage%>" style="width: 40%;"></div>
	<div class="col-md-12 text-center"><%=board.getFcontent() %></div>
	
</div>
	<div class="form-group  row">
            <div class="col-sm-offset-2 col-sm-10 ">
               <!-- <input type="submit" class="btn btn-dark" value="UPDATE " > --> 
               <input type="button" onClick="location.href='FreeBoardList.jsp'" class="btn btn-dark" value="LIST">
               <input type="button" onClick="location.href='FreeBoardDeleteDB.jsp?fno=<%=fno %>'" class="btn btn-dark" value="DELETE">
            </div>
         </div>
	<table class="table table-striped">
	<%@ include file = "/footer.jsp" %>	
</body>
</html>