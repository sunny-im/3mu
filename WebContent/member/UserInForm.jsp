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

	<h3>User Information</h3><br>
	
	<%
      ArrayList<MemberObj> members = (new MemberDAO()).getList();
   %>
	<table class="table table-hover">
	  <thead>
	    <tr>
	      <th scope="col"></th>
	      <th scope="col">ID</th>
	      <th scope="col">NAME</th>
	      <th scope="col">EMAIL</th>
	      <th scope="col">PHONE</th>
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
		      <td><a href="MemberView.jsp?id=<%=member.getId() %>" class="btn" style="background-color: #ACC7B4;" role="button">View &raquo;</a></td>
   		</tr>
   		
         <%
         i--;
         } 
         %>
		</tbody>
	</table>




<%@ include file = "/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>