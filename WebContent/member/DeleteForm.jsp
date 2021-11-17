<%@page import="dao.MemberDAO"%>
<%@page import="dao.MemberObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
<%
	MemberObj member = (new MemberDAO()).getDetail(id);
%>

	<div class="alert alert-secondary" role="alert">
		<h3 class="display-3">회원 탈퇴</h3>
	</div>
	 <form action="MemberDeleteDB.jsp" method="post">
        <table class="table table-striped">
          <tr>
            <td>아이디</td>
            <td><%= request.getParameter("id") %></td>
          </tr>
           
          <tr>
            <td>패스워드</td>
            <td>
            <input type="password"  name="pass1" class="form-control">
            </td>
          </tr>
           
        <tr>
            <td colspan="2" class="text-center">
             	<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
             	<a href="DeleteDB.jsp?id=<%=member.getId() %>" class="btn btn-dark" role="button">탈퇴하기</a>
			 	<button type="button"  class="btn btn-warning" onclick="location.href='detailMember'.jsp'">뒤로가기</button>
             </td>    
        </tr>
        </table>
    </form>    
	
<%@ include file = "/footer.jsp" %>
</body>
</html>