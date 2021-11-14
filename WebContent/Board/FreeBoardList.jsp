<%@page import="DAO.BoardDAO"%>
<%@page import="DAO.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
	<%@ include file = "/header.jsp" %>
	<div class = "container">
		<h3>Board</h3><br>
	</div>	
	
	<%
		ArrayList<BoardObj> boards = (new BoardDAO()).getList();
	%>
	<table class="table table-hover">
	  	<thead>
		    <tr>
		      <th scope="col"></th>
		      <th scope="col">Title</th>
		      <th scope="col">Author</th>
		      <th scope="col">Date</th>
		    </tr>
	    </thead>
		<tbody>
			<%
				int i = boards.size();
				for(BoardObj board : boards) {
			%>
    <tr>
      <th scope="row"><%= i%></th>
      <td><a href="#" style="text-decoration-line: none; color:black;"><%=board.getFtitle()%></a></td>
      <td><%=board.getFauthor()%></td>
      <td><%=board.getFdate()%></td>
      <td><a href="BoardView.jsp?id=<%=board.getFno()%>" class="btn btn-dark" role="button">View &raquo;</a></td>
    </tr>

			<%
				i --;			
				}
			%>
	
		</tbody>
	</table>
	<div class="col-sm-offset-10 col-sm-2">
		<button type="button" class="btn btn-dark" type="submit">Write</button>
	</div>
	
	<%@ include file = "/footer.jsp" %>	
</body>
</html>