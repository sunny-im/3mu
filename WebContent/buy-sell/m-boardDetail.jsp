<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "dao.*" %>
<%@ page import="java.util.ArrayList"%>  
<!DOCTYPE html>
<%
	request.setCharacterEncoding("UTF-8");
	String mno = request.getParameter("mno");
	MBoardObj mboard = (new MBoardDAO()).getDetail(mno);
	String mimg = mboard.getMimg();
	String cid = (String) session.getAttribute("id");
%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title><%=mboard.getMtitle() %></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/m-boardDetail.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="body-container container">
<div class="jumbotron">
	<h2 class="col-md-12 text-center">[<%=mboard.getMsub()%>] <%=mboard.getMtitle() %></h2>
	<div class="col-md-12 text-center">
		<div class="col-md-4 col-md-offset-2"><small>작성자 : <%=mboard.getId() %></small></div>
		<div class="col-md-4"><small><%=mboard.getMtime() %></small></div>
	</div>
	<div class="img"><img class="img-rounded center-block" src="/images/<%=mimg%>" style="width: 40%;"></div>
	<div class="col-md-12 text-center"><%=mboard.getMcontent() %></div>
	<%if("admin".equals(cid) || cid.equals(mboard.getId())) {  %>
	<a href="/buy-sell/m-boardDel.jsp?mno=<%=mno %>" class="delete btn btn-default">삭제</a>
	<%} %>
</div>
	<div class="card-body">
		<form class="form-horizontal" action="/buy-sell/m-replyAddDB.jsp" method="post">
			<div class="row">
				<div class="form-group col-sm-8">
					<input class="form-control input-sm" id="newReplyText" type="text"
						name="content" placeholder="댓글 입력...">
				</div>
				<div class="form-group col-sm-2"  style="display:none;">
					<input class="form-control input-sm" id="newReplyWriter"
						type="text" name="id"value="<%=id%>"placeholder="">
					<input id="mno" name="mno" type="text" value="<%=mno%>">
				</div>
				<div class="form-group col-sm-2">
					<button type="submit" name="submit"
						class="btn btn-primary btn-sm btn-block">
						저장
					</button>
				</div>
			</div>
		</form>
	</div>
	<table class="table table-striped">
	<%
	ArrayList<MReplyObj> mreplys = (new MReplyDAO()).getlist(mno); 
	for (MReplyObj mreply : mreplys) {
	%>
	<tr>
		<td style="width:70%;"><%=mreply.getContent() %></td>
		<td style="width:10%;"><%=mreply.getId() %></td>
		<td style="width:20%;"><%=mreply.getTime() %></td>
	
	</tr>
	
	<%} %>
	</table>

</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>