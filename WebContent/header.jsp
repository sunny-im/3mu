<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
body {
	padding-bottom: 70px;
}
</style>
<%
	String id = (String) session.getAttribute("id");
%>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/main.jsp" style="background:url('/img/icon_06.png') no-repeat center;background-size:cover; text-indent: -9999px; width:50px;">Brand</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/buy-sell/m-board.jsp">3무마켓</a></li>
        <li><a href="/board/FreeBoardList.jsp">자유게시판</a></li>
        <li><a href="#">3무마켓</a></li>
        <li><a href="#">3무마켓</a></li>
        <% 
        if(id != null){
        	if(id.equals("admin")) {
        %>		
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">관리자메뉴 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
        <%
        	}
        }
        %>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"> 회원메뉴 <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
          <%if (id != null){%>
            <li><a href="/member/logout.jsp">로그아웃</a></li>
            <li class="divider"></li>
            <li><a href="#">회원탈퇴</a></li>
         <%} else { %>
            <li><a href="/member/join.jsp">회원가입</a></li>
            <li><a href="/member/login.jsp">로그인</a></li>
            <%} %>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
