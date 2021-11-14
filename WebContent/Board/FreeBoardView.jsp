<%@page import="DAO.BoardDAO"%>
<%@page import="DAO.BoardObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board View</title>
</head>
<body>
	<%@ include file = "/header.jsp" %>
	
<div class="panel panel-success">
	<div class = "container">
		<h3>View</h3><br>
	</div>	
	
	<%
		String a = request.getParameter("id");
		BoardObj board = (new BoardDAO()).getView(a);
		
	%>

<div class="container">
      <form name="newMember" class="form-horizontal"  action="FreeBoardDB.jsp" method="post" enctype="multipart/form-data" ">
         <div class="form-group  row">
            <label class="col-sm-2 ">TITLE</label>
            <div class="col-sm-3">
                <input name="title" type="text" class="formcontrol" value = "<%=board.getFtitle() %>" >
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2">AUTHOR</label>
            <div class="col-sm-3">
              <input name="author" type="text" class="form-control" value = "<%=board.getFauthor() %>" >
            </div>
         </div>
         <div class="form-group  row">
            <label class="col-sm-2">CONTENT</label>
            <div class="col-sm-10">
           	 	<textarea name="description" rows="5" cols="20" class="form-control" >"<%=board.getFcontent() %>"</textarea>
            	<img src = "/images/<%=board.getFimage() %>" style ="width: 50%">
            </div>
         </div>
         
         <div class="form-group  row">
            <label class="col-sm-2 ">Registration DATE</label>
            <div class="col-sm-5">
               <%=board.getFdate() %>
            </div>
         </div>
         <div class="form-group  row">
            <div class="col-sm-offset-2 col-sm-10 ">
               <!-- <input type="submit" class="btn btn-dark" value="UPDATE " > --> 
               <input type="button" onClick="location.href='FreeBoardList.jsp'" class="btn btn-dark" value="LIST">
            </div>
         </div>
      </form>
   </div>
  </div>
	<%@ include file = "/footer.jsp" %>	
</body>
</html>