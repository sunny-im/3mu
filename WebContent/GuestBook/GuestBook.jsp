<%@ page import = "dao.*" %>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	ArrayList<GuestBookObj> books = (new GuestBookDAO()).getList();
%>

<!-- <form action="GuestBookDB.jsp" method="post">
    <table border="1" width="500">
        <tr>
            <td>이름</td><td><input type="text" name="name"></td>
            <td>비밀번호</td><td><input type="password" name="pw"></td>
        </tr>
        <tr>
            <td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
        </tr>
        <tr>
            <td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
        </tr>
    </table>
</form> -->

	<form action="GuestBookDB.jsp" method="post">

		<div class = "section pad-24 mtop-30">
				
            이름 : <input type="text" name="name"><br>
            비밀번호 : <input type="password" name="pw"><br>
			<textarea name="content" class="mtop-10"></textarea>
			<div class = "section pad-24 mtop-30">
				<input type="submit" value="등록">
			</div>
		</div>
	</form>
<br>
    <% if(books != null){
        for(GuestBookObj book : books){ %>
        <table class="table">
            <tr>
                <td><%= book.getGname() %></td>
                <%-- <td><%= book.getGregDate() %></td> --%>
                <td><a href="GuestBookDelete.jsp?name=<%= book.getGname() %>">delete</a></td>
            </tr>
            <tr>
                <td><%= book.getGcontent() %></td>
            </tr>
        </table>
        <br>
        <% } %>
    <% } %>
</body>
</html>