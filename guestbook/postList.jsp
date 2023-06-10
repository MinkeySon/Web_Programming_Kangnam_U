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
<title>Guest Book Script</title>
</head>
   <body>
   <div class="container w-75 mt-5 mx-auto">
    <h2>Guest Book Script</h2>
   <h3>Made by Yu_seong Minkey</h3>
    <hr>
    <table class="table">
	  <thead class="thead-light">
	    <tr>
	      <th scope="col">#</th>
	      <th scope="col">Writer</th>
	      <th scope="col">Email</th>
	      <th scope="col">Time</th>
	      <th scope="col">Title</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach items="${post }" var="p">
		    <tr>
		      <th scope="row">${p.aid }</th>
		      <td>${p.username }</td>
		      <td>${p.email }</td>
		      <td>${p.date }</td>
		      <td>
		      	<a href="post.nhn?action=getPost&aid=${p.aid}" class="link-offset-2 link-underline link-underline-opacity-0 link-underline-opacity-0-hover">${p.title }</a>
		      </td>
		    </tr>
		</c:forEach>
	  </tbody>
	</table>
	<div class="row justify-content-center">
		<a class="btn btn-info btn-lg m-2" href="guestbook/newPost.jsp" role="button">Enroll</a>
	</div>
</div>
</body>
</html>