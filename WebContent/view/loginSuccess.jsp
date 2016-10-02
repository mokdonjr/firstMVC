<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인에 성공했습니다 - Let-Me-In 프로젝트에 오신 여러분을 환영합니다.</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form class="form-signin" action="/firstMVC/index.jsp" method="post">
			<center><h2 class="form-signin-heading">로그인 성공!</h2>
			<h2>${customer.id } 님 환영합니다!</h2></center>
			<center><button class="btn btn-lg btn-primary " type="submit" required autofocus>홈으로 가기</button></center>
		</form>
	</div>
</body>
</html>