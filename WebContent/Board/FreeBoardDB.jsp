<%@page import="DAO.BoardDAO"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="util.FileUtil"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
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
		request.setCharacterEncoding("UTF-8");
		
		String ftitle = null, fcontent = null, fauthor=null, fimage = null, fdate=null;
		byte[] ffile = null;
		
	
		ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
		
		List items = sfu.parseRequest(request);
		
		Iterator iter = items.iterator();
		
	 	while(iter.hasNext()) {   
			FileItem item = (FileItem) iter.next();
	 		String name = item.getFieldName();
	 		
			if(item.isFormField()) {	 
				String value = item.getString("utf-8");
				if (name.equals("title")) ftitle = value;
				else if (name.equals("name")) fauthor = value;
				else if (name.equals("content")) fcontent = value;
			
			} 
			else {    
				if (item.getName() == "") {
					
				}
				else if (name.equals("filename")) {
					fimage = item.getName();   
					ffile = item.get();		 
					String root = application.getRealPath(java.io.File.separator);
					FileUtil.saveImage(root,fimage,ffile);
					
					
				}
			}
		}
		
	 	BoardDAO dao = new BoardDAO();
		fcontent = fcontent.replace("\r\n","<br>");   
		
		if(dao.insert(ftitle, fauthor, fcontent, fimage)) {
			response.sendRedirect("/Board/FreeBoardList.jsp");
		}else {
			out.print("<script>alert('Failed to upload :( Try again '); location.href='/Board/FreeBoard.jsp';</script>");
		}
	%>
</body>
</html>