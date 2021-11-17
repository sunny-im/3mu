<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="util.Fileutil"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.util.*"%>
<%@page import="dao.MBoardDAO"%>


<%
	request.setCharacterEncoding("UTF-8");

	String id = null, msub = null, mtitle = null, mcontent = null, mimg = null;
	byte[] mfile = null;
	
	ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());
	List items = sfu.parseRequest(request);
	
	Iterator iter = items.iterator();
	
	while(iter.hasNext()) {
		FileItem item = (FileItem) iter.next();
		String name = item.getFieldName();
		if(item.isFormField()) {
			String value = item.getString("UTF-8");
			if(name.equals("id")) id = value;
			else if (name.equals("msub")) msub = value;
			else if (name.equals("mtitle")) mtitle = value;
			else if (name.equals("mcontent")) mcontent = value;
		}
		else {
			if(name.equals("mimg")) {
			mimg = item.getName();
			mfile = item.get();
			String root = application.getRealPath(java.io.File.separator);
			Fileutil.saveImage(root, mimg, mfile);
			}else {
				mimg = null;
			}
		}
	}
	MBoardDAO dao = new MBoardDAO();
	if(dao.insert(id, msub, mtitle, mcontent, mimg)) {
		out.print("<script>alert('게시물 등록 성공!!'); location.href='/buy-sell/m-board.jsp';</script>");
	}else {
		out.print("에러발생!");
	}
	


%>