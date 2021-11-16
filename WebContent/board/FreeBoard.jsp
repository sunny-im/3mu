<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Free Board</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/CSS/style.css">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.css" rel="stylesheet">

</head>
<body>

<%@ include file = "/header.jsp" %>

	<div class="container" style="padding-top:30px;">
	
	  <form name="newProduct" class="form-horizontal"  action="FreeBoardDB.jsp" method="post" enctype="multipart/form-data">
	    
	    <div class="form-group  row">
	       <label class="col-sm-2">Title</label>
	       	 <div class="col-sm-4">
	           <input name="title" type="text" class="form-control" placeholder="Enter the Title" >
	    	</div>
		</div>
	   
	    <div class="form-group  row" style="display:none;">
	      <label class="col-sm-2">Name</label>
	         <div class="col-sm-4">
	           <input name="id" type="text" class="form-control" value="<%=id %>" placeholder="Enter the name" >
	  		 </div>
		</div>
		
		<div class="container" style="padding-top: 30px;">
			<textarea name="content" id="myEditor" class="form-control" cols="30" rows="10"></textarea>
		</div>


       	<div class="form-group  row">
            <label class="col-sm-2">File</label>
        	<div class="col-sm-4">
               <input name="filename" type="file" class="form-control" >
            </div>
       </div>
	
		<div class="col-sm-offset-5 col-sm-5">
			<input type="submit" class="btn btn-dark" value="SUBMIT " > 
	    	<input type="reset" class="btn btn-dark" value="CANCEL" onclick="reset()" >
	    	
		</div>
	
	  </form>
	</div>
	
	
	
	<%@ include file = "/footer.jsp" %>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/lang/summernote-ko-KR.min.js"></script>

	<script>
		$(document).ready(function() {

			$('#myEditor').summernote({
				lang : 'ko-KR',
				height : 250,
			});

		});
	</script>
</body>
</html>