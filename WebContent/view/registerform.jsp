<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입해주셔서 감사합니다 - Let-Me-In 프로젝트에 오신 여러분을 환영합니다.</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

		<form class="form-signin" action="/firstMVC/doRegister" method="post">
		<center><h2 class="form-signin-heading">가입해주셔서 감사합니다.</h2></center>
		
			<label for="id" >아이디</label> 
			<input type="text" name="id" id="id" class="form-control" placeholder="ID" required autofocus>
			<br>
			<label for="password" >비밀번호</label>
			<input type="password" name="password" id="password" class="form-control" placeholder="비밀번호 입력" required>
			<br>
			<label for="checkPassword" >비밀번호 확인</label> 
			<input type="password" name="checkPassword" id="checkPassword" class="form-control" placeholder="입력한 비밀번호를 한번 더 입력하세요" required autofocus>
			<br>
			<label for="name" >이름</label> 
			<input type="text" name="name" id="name" class="form-control" placeholder="이름" required autofocus>
			<br>
			<label for="birth" >생년월일</label> 
			<input type="text" name="birth" id="birth" class="form-control" placeholder="생년월일 6자리 입력 (예. 901125)" required autofocus>
			<br>
			<label for="gender" >성별</label>
			<table class="form-control">
			<tr culomn>
			<td><input type="radio" name="gender" id="gender1" value="man" ><label for="gender1" >남자</label> </td>
			<td><input type="radio" name="gender" id="gender2" value="woman" ><label for="gender2" >여자</label> </td>
			</tr>
			</table>
			<br>
			<label for="phone" >핸드폰번호</label> 
			<input type="text" name="phone" id="phone" class="form-control" placeholder="핸드폰 번호는 '-'없이 입력하세요 (예. 01071504498)" required autofocus>
			<br>
			<label for="email" >메일주소</label> 
			<input type="email" name="email" id="email" class="form-control" placeholder="example@letmein.com" required autofocus>
			<br>
			<center><button class="btn btn-lg btn-primary" type="submit" value="회원가입">입력완료</button></center>
		</form>

	</div>
registerform입니다. 회원가입하는 페이지입니다.

<!-- doLogin으로 이동하는게 아닌거같은데..? 응 doRegister! -->
<form action="/firstMVC/doRegister" method="post">

아이디 : <input type="text" name="id"><br>
비밀번호 : <input type="password" name="password"><br>
비밀번호 확인 : <input type="password" name="checkPassword"><br>
성함 : <input type="text" name="name"><br>
주민등록 번호 : <input type="text" name="birth" size="6">-<input type="text" name="gender" size="1">******<br>
뒷자리는 맨 앞 한자리만 입력하세요<br>
핸드폰 번호 : <input type="text" name="phone1" size="3">-<input type="text" name="phone2" size="4">-<input type="text" name="phone3" size="4"> <br>
E-MAIL주소 : <input type="text" name="email" value="yourId@gmail.com"><br>
<input type="submit" value="작성완료"><br>

</form>
</body>
</html>