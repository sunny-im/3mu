<%@ page import = "DAO.*" %>
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
    request.setCharacterEncoding("utf-8");
    
    String gname = request.getParameter("name");
    String gpassword = request.getParameter("pw");
    String gcontent = request.getParameter("content");
    
    GuestBookDAO dao = new GuestBookDAO();
    
    if (dao.insert(gname, gpassword, gcontent)) {
    	response.sendRedirect("GuestBook.jsp");
    } else {
    	out.print("오류발생");
    }
       
%>

</body>
</html>