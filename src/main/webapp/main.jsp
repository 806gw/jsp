<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의성 홍보 사이트</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	background-color: #f4f4f4;
}

header {
	background-color: #ff6347;
	color: white;
	text-align: center;
	padding: 1em 0;
}

.container {
	width: 80%;
	margin: 2em auto;
	background: white;
	padding: 2em;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.link {
	display: flex;
	justify-content: space-around;
	margin-bottom: 2em;
}

.link a {
	text-decoration: none;
	color: #000;
	font-weight: bold;
	padding: 0.5em 1em;
	border-radius: 5px;
	transition: background-color 0.3s, color 0.3s;
}

.link a#food:hover {
	color: white;
	background-color: red;
}

.link a#local:hover {
	color: white;
	background-color: #EDC220;
}

.logo-box {
	text-align: center;
}

.logo {
	width: 250px;
}

footer {
	background-color: #333;
	color: white;
	text-align: center;
	padding: 1em 0;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<header>
		<h1>의성 홍보 사이트</h1>
	</header>
	<div class="container">
		<div class="link">
			<a href="recommend.jsp" id="food">의성 추천 보러 가기</a> <a href="local.jsp"
				id="local">로컬 푸드 사러 가기</a>
		</div>
		<div class="logo-box">
			<img src="./img/logo.svg" class="logo" />
		</div>
		<h2 style="text-align: center;">2024년 의성 홍보 사이트입니다.</h2>
		<h4 style="text-align: center;">This is a 2024 Uiseong
			promotional site.</h4>
	</div>
	<footer>
		<p>&copy; 2024 의성 홍보 사이트</p>
	</footer>
</body>
</html>
