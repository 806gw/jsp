<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            text-align: center;
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
        ul {
            list-style-type: none;
            padding: 0;
        }
        ul li {
            margin: 0.5em 0;
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
            <a href="restaurant.jsp" id="food">의성 맛집 추천 보러 가기</a>
            <a href="local.jsp" id="local">로컬 푸드 사러 가기</a>
        </div>
        <h2>의성 홍보 사이트 입니다.</h2>
        <p>다음과 같은 기능들이 있습니다</p>
        <ul>
            <li>의성 맛집 추천</li>
            <li>의성 로컬 푸드 판매</li>
        </ul>
    </div>
    <footer>
        <p>&copy; 2024 의성 홍보 사이트</p>
    </footer>
</body>
</html>
