<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 페이지</title>
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
			<center><h2 class="form-signin-heading">관리자모드로 회원가입 현황 확인하는 페이지 입니다</h2>
			<h2 class="form-signin-heading">현재 가입자 수는 <%=request.getAttribute("num") %> 명입니다.</h2></center>
			<center><button class="btn btn-lg btn-primary " type="submit"required autofocus>홈페이지로 가기</button></center>
		</form>
	</div>
</body>
</html>