<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project Let-Me-In에 오신 여러분을 환영합니다.</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="jumbotron text-center">
		<h1>Project LetMeIn</h1>
		<p>Let-Me-In 프로젝트에 오신 여러분을 환영합니다.</p>
		<p>
			<h5><a href="/firstMVC/home?action=login">로그인</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="/firstMVC/home?action=register">회원 가입</a><br><br>
			<a href="/firstMVC/home?action=forgot">아이디 / 비밀번호 찾기</a></h5><br>
		</p>
		<p>
			<h6><a href="/firstMVC/home?action=showCustomers">관리자 모드로 회원가입현황보기</a></h6>
		</p>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-sm-4">
				<h3>프로젝트 소개</h3>
				<p>시대가 빠르게 변화함에 따라 우리의 삶도 변화하고있습니다. 모두 자신의 삶을 개척하기 위해 나아갈때 소외된 사람들이 있습니다.</p>
				<p>변화에 따라가기 힘든 이들을 위해 연구하고 개발합니다. IT기술이 격차가 아닌 이음이 될 수 있어야 합니다.
				그 첫째로 접근성이 중요합니...<a href="firstMVC/home?action=more">more</a></p>
			</div>
			<div class="col-sm-4">
				<h3>제품 소개</h3>
				<p>2016년 6월 Let-Me-In의 첫 프로젝트로 시각장애우를 위한 타이핑 연습 훈련 프로그램을 개발하였습니다.</p>
				<p>단어가 TTS(Text-To-Speech)라는 오픈소스를 통해 음성 재생이되고, 우리의 사용자인 시각장애우는 
				단어장의 단어를 듣고...<a href="firstMVC/home?action=more">more</a></p>
			</div>
			<div class="col-sm-4">
				<h3>개발자 이야기</h3>
				<p>우리가 세상에 태어나 삶을 살아가는데 이유가 있다고 한다면 그 이유는 내 삶의 가치라고 할 수 있겠습니다.</p>
				<p>이 프로젝트를 통해 여러 제품을 더 많들어 제 삶의 가치를 실현하고자 합니다. 더 많은 사람들이 즐겁고 누구나
				...<a href="firstMVC/home?action=more">more</a></p>
			</div>
		</div>
	</div>
</body>
</html>