<%@page import="DAO.GuestBookDAO"%>
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
    GuestBookDAO dao = new GuestBookDAO();
	String gname = request.getParameter("gname");
%>
<form method="post" action="GuestBookDelete.jsp">
    <input type="hidden" name="gname" value=<%=gname%>>
    <table>
        <tr>
            <td>비밀번호</td>
            <td><input type="password" name="pw"></td>
            <td><input type="submit" value="삭제"></td>
        </tr>
    </table>
</form>
<a href="GuestBook.jsp">이전페이지</a>
</body>
</html>