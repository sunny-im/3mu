<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, maximum-scale=1, minimum-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="body-container container">
	<form action="/buy-sell/m-boardaddDB.jsp" method="post" enctype = "multipart/form-data">
		<fieldset class="row">
		<!-- Form Name -->
			<legend>Form Name</legend>
			<div class="form-group">
				<div class="col-md-2">
					<select id="selectbasic" name="msub" class="form-control input-md">
						<option value="0">카테고리</option>
						<option value="삽니다.">삽니다</option>
						<option value="팝니다.">팝니다</option>
					</select>
				</div>
			</div>
			<br>
			<!-- Text input-->
			<div>
				<div style="display: none;">
					<input id="id" name="id" type="text" placeholder="글 제목" class="form-control input-md" value=<%=id %>>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-8">
					<input id="mtitle" name="mtitle" type="text" placeholder="글 제목" class="form-control input-md" required="">
				</div>
			</div>
			<!-- Textarea -->
			<div class="form-group">
				<div class="col-md-12">                     
					<textarea class="form-control" id="summernote" name="mcontent">default text</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-4">
					<input id="filebutton" name="mimg" class="input-file" type="file">
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-12">
					<button id="submit" name="submit" class="btn btn-default center">글쓰기</button>
				</div>
			</div>
		</fieldset>
	</form>
</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
  <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
  </script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</body>
</html>