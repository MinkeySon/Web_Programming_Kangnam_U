<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Input Guest Book</title>
</head>
<script>
	function validateInputs() {
	    var username = document.getElementsByName("username")[0].value;
	    var email = document.getElementsByName("email")[0].value;
	    var title = document.getElementsByName("title")[0].value;
	    var content = document.getElementsByName("content")[0].value;
	    
	    if (username === "" || email === "" || title === "" || content === "") {
	        alert("모든 입력란을 채워주세요.");
	        return false;
	    }
	
	    // 폼 유효성 검사 통과한 경우
	    submitForm(); // 폼 제출
	    return false; // 폼 제출 후 페이지 이동 방지
	}
	
	function submitForm() {
	    // 폼 제출 코드 추가
	    document.querySelector("form").submit();
	}

</script>
<body>
	<div class="container w-75 mt-5 mx-auto">
	
		<h2>Input Guest Book</h2>
		<hr />
		<div class="form-group">
			<form method="post" id="new-post" action="/post.nhn?action=addPost">
				<div class="input-group mb-3">
			  		<div class="input-group-prepend">
			    	<span class="input-group-text" id="inputGroup-sizing-default">Writer</span>
			  	</div>
			  		<input type="text" name="username" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				<div class="input-group mb-3">
			  		<div class="input-group-prepend">
			    	<span class="input-group-text" id="inputGroup-sizing-default">Email</span>
			  	</div>
			  		<input type="text" name="email" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				<div class="input-group mb-3">
			  		<div class="input-group-prepend">
			    	<span class="input-group-text" id="inputGroup-sizing-default">Title</span>
			  	</div>
			  		<input type="text" name="title" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
				</div>
				<div class="form-floating"> 
 						<textarea class="form-control" name="content" placeholder="내용을 입력하세요" id="floatingTextarea2" style="height: 200px"></textarea>
				</div>
				<div class="row justify-content-center">
					<button class="btn btn-primary" type="button" onclick="validateInputs()">Input</button>
					<button class="btn btn-danger" type="reset">Cancel</button>
					<a class="btn btn-warning" href="javascript:window.history.back()" role="button">Script</a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>