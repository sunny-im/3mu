<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
	<!-- Custom styles for this template -->
    	
    	<link href="/resource/css/signin.css" rel="stylesheet">
</head>

 	<body class="text-center">
    	<form class="form-signin" action="loginCheck.jsp" method="post">
  			<img class="mb-4" src="../img/mine.jpg" alt="" width="72" height="72">
  			
  			<!-- 이미지 넣어주기 -->
  			
  <h1 class="h3 mb-3 font-weight-normal">삼무마켓</h1>
  <label for="inputEmail" class="sr-only">아이디</label>
  	<input type="text" id="inputEmail" name="id" class="form-control" placeholder="ID 입력" required>
  
  <label for="inputPassword" class="sr-only">비밀번호</label>
  	<input type="password" id="inputPassword" name="pass" class="form-control" placeholder="PW 입력" required>

<!-- 삼무색으로 바꿔야함 -->

  <button  type="submit"
  		style="color: #fff; background:green; font-size:2em; border-radius:0.5em; padding:5px 20px;">로그인</button>
	<div>
  		<a href="/Member/join.jsp">회원가입</a> 
	</div>
	<div class ="btnSearch"> 
		<a href="/Member/id_search.jsp">아이디 찾기</a>
  	</div>
  	<div> 
		<a href="/Member/ps_search.jsp">비밀번호 찾기</a>
	</div>
  
  <p class="mt-5 mb-3 text-muted">&copy; 3mu 2021</p>
  
</form>
</body>
</html>