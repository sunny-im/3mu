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
    String gpass = request.getParameter("pw");
    
    GuestBookDAO dao = new GuestBookDAO();
    String password = dao.getPwd(gname);

    if (gpass.equals(password)) {
		dao.delete(gpass);
		response.sendRedirect("GuestBook.jsp");
	} else {
%>
    <script>
        alert("비밀번호가 틀렸습니다.");
        history.go(-1);
    </script>
<%
	}
%>
</body>
</html>