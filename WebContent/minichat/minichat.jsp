<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.MinichatDAO"%>
<%@ page import="dao.MinichatObj"%>
<%@ page import="java.util.ArrayList"%>  

<%

request.setCharacterEncoding("UTF-8");


ArrayList<MinichatObj> chats = (new MinichatDAO()).getchat();
for(MinichatObj chat : chats) {
%>
<tr>
	<td><%=chat.getId() %></td>
	<td><%=chat.getCcontent() %></td>
	<td><%=chat.getCtime().substring(5,16) %></td>
</tr>

<%}%>