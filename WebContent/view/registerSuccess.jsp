<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 성공 페이지</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form class="form-signin" action="/firstMVC/index.jsp" method="get">
			<center><h2 class="form-signin-heading">Let-Me-in의 회원이 되어주셔서 감사합니다.</h2>
			<h3 class="form-signin-heading">회원님의 가입 내역입니다.</h3></center>
			<ul>
			<li>아이디 : ${customer.id}</li>
			<li>비밀 번호 : ${customer.password}</li>
			<li>이름 : ${customer.name}</li>
			<li>생년월일 : ${customer.birth}</li>
			<li>성별 : ${customer.gender}</li>
			<li>전화 번호 : ${customer.phone}</li>
			<li>메일 주소 : ${customer.email}</li>
			</ul>
			<center><button class="btn btn-lg btn-primary " type="submit"required autofocus>홈페이지로 가기</button></center>
		</form>
	</div>
</body>
</html>