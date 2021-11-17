<%@page import="dao.MemberDAO"%>
<%@page import="dao.MemberObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/m-boardDetail.css">
<style type="text/css">
       #wrap{
           text-align: center;
           width: 800px;
           height: 150px;
       }
</style>
</head>
<body>
<%@ include file = "/header.jsp" %>

<div class="jumbotron">
	<div class="container">
		<h2 class="display-3">회원 리스트<img src="/img/icon03.png" height="100"></h2>
	</div>
</div>
	
	<%
      ArrayList<MemberObj> members = (new MemberDAO()).getList();
   %>
  <div class="body-container container">
	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">아이디</th>
	      <th scope="col">이름</th>
	      <th scope="col">이메일</th>
	      <th scope="col">휴대폰 번호</th>
	    </tr>
	  </thead>
	  <tbody>
            <%
               int i = members.size();
               for (MemberObj member : members) {
            %>
		<tr>
	      <th scope="row"><%=i%></th>
		      <td><%=member.getId() %></td>
		      <td><%=member.getName() %></td>
		      <td><%=member.getEmail() %></td>
		      <td><%=member.getPhone() %></td>
		      <td><a href="detailMember.jsp?id=<%=member.getId() %>" class="btn btn-dark" role="button">상세보기 &raquo;</a></td>
   		</tr>
   		
         <%
         i--;
         } 
         %>
		</tbody>
	</table>
</div>




<%@ include file = "/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>