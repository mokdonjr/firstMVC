<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지 - Let-Me-In 프로젝트에 오신 여러분을 환영합니다.</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">

		<form class="form-signin" action="/firstMVC/doLogin" method="post">
			<center><h2 class="form-signin-heading">회원이신가요?</h2></center>
			<label for="id">아이디</label> 
			<input type="text" name="id" id="id" class="form-control" placeholder="아이디 입력" required autofocus>
			<br>
			<label for="password">비밀번호</label>
			<input type="password" name="password" id="password" class="form-control" placeholder="비밀번호 입력" required>
			<br>
			<center><button class="btn btn-lg btn-primary " type="submit" value="로그인">입력완료</button></center>
		</form>

	</div>


</body>
</html>