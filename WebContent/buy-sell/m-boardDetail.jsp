<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "dao.*" %>
<!DOCTYPE html>
<%
	String mno = request.getParameter("mno");
	MBoardObj mboard = (new MBoardDAO()).getDetail(mno);
	String mimg = mboard.getMimg();
	String cid = (String) session.getAttribute("id");
%>
<html>
<head>
<meta charset="UTF-8">
<title><%=mboard.getMtitle() %></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="body-container container">
	<div><%=mboard.getMtitle() %></div>
	<div><%=mboard.getMtime() %></div>
	<div><%=mboard.getId() %></div>
	<div><%=mboard.getMcontent() %></div>
	<div><img src="/images/<%=mimg%>" style="width: 40%;"></div>

	<div class="card-body">
		<form class="form-horizontal" action="/buy-sell/m-replyAddDB.jsp" method="post">
			<div class="row">
				<div class="form-group col-sm-8">
					<input class="form-control input-sm" id="newReplyText" type="text"
						name="content" placeholder="댓글 입력...">
				</div>
				<div class="form-group col-sm-2"  style="display:none;">
					<input class="form-control input-sm" id="newReplyWriter"
						type="text" name="id"value="<%=cid%>"placeholder="">
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


</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>