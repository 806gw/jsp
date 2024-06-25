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

.pro-container {
    display: flex;
    gap: 30px;
    flex-wrap: wrap; /* 필요한 경우 요소들을 줄바꿈할 수 있도록 설정 */
}

.promotion {
    width: 170px; /* 고정된 너비 설정 */
    height: 250px; /* 고정된 높이 설정 */
    background-color: #EF5350;
    border-radius: 15px;
    cursor: pointer;
    overflow: hidden; /* 내부 요소가 넘치는 경우를 방지하기 위해 오버플로우 숨김 설정 */
}

.location {
    text-align: center;
    overflow: hidden;
    position: relative;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
}

.location > img {
     width: 170px; /* 고정된 너비 설정 */
    height: 130px; /* 고정된 높이 설정 */
    display: block;
    border-top-left-radius: 15px;
    border-top-right-radius: 15px;
    transition: transform 0.3s ease, border-radius 0.3s ease;
}

.location > img:hover {
    transform: scale(1.2);
    border-radius: 0;
}

.info {
    width: 100%;
    height: 100%;
}

.loc-name {
    width: 100%;
    font-size: 16px;
    margin-left: 10px;
    color: #fff;
}

.loc-info {
    font-size: 13px;
    color: #fff;
    margin-left: 10px;
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
        <h2 style="text-align: center;">2024년 의성 홍보 사이트입니다.</h2>
        <h4 style="text-align: center;">This is a 2024 Uiseong promotional site.</h4>
        <h2>의성 관광 명소</h2>
        <div class="pro-container">
            <div class="promotion">
                <div>
                    <div class="location">
                        <img src="./img/고운사.jpg" alt="">
                    </div>
                    <div class="info">
                        <p class="loc-name">고운사</p>
                        <p class="loc-info">
                            4.5 ⭐ (673) <br> 불교사찰
                        </p>
                        <p class="loc-info">ㅤ</p>
                    </div>
                </div>
            </div>
            <div class="promotion">
                <div>
                    <div class="location">
                        <img src="./img/산수유마을.jpeg" alt="">
                    </div>
                    <div class="info">
                        <p class="loc-name">산수유마을</p>
                        <p class="loc-info">
                            3.8 ⭐ (338) <br> 관광 명소
                        </p>
                        <p class="loc-info">ㅤ</p>
                    </div>
                </div>
            </div>
            <div class="promotion">
                <div>
                    <div class="location">
                        <img src="./img/조문국.jpeg" alt="">
                    </div>
                    <div class="info">
                        <p class="loc-name">의성 조문국 박물관</p>
                        <p class="loc-info">
                            4.3 ⭐ (836) <br> 박물관
                        </p>
                        <p class="loc-info">ㅤ</p>
                    </div>
                </div>
            </div>
            <div class="promotion">
                <div>
                    <div class="location">
                        <img src="./img/빙계계곡.jpg" alt="">
                    </div>
                    <div class="info">
                        <p class="loc-name">빙계계곡</p>
                        <p class="loc-info">
                            4.3 ⭐ (404) <br> 관광 명소
                        </p>
                        <p class="loc-info">ㅤ</p>
                    </div>
                </div>
            </div>
            <div class="promotion">
                <div>
                    <div class="location">
                        <img src="./img/의성마늘테마파크.jpg" alt="">
                    </div>
                    <div class="info">
                        <p class="loc-name">의성마늘테마파크</p>
                        <p class="loc-info">
                            3.3 ⭐ (008) <br> 관광 명소
                        </p>
                        <p class="loc-info">ㅤ</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 의성 홍보 사이트</p>
    </footer>
</body>
</html>
