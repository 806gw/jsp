<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement"%>
<!DOCTYPE html>
<html>
<head>
<title>로컬푸드 상품 목록</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

header {
	background-color: #ff6347;
	color: white;
	text-align: center;
	padding: 1em 0;
}

table {
	width: 80%;
	margin: 2em auto;
	border-collapse: collapse;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 1em;
	text-align: left;
}

th {
	background-color: #ff6347;
	color: white;
}

.buy-button {
	background-color: #ff6347;
	color: white;
	padding: 0.5em 1em;
	border: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
}

.buy-button:hover {
	background-color: #ff4500;
}

.goods-container {
	width: 250px;
	height: 400px;
}

.food-img {
	width: 250px;
	border: 1px solid #f0f0f0;
	border-radius: 10px;
}

.title {
	font-weight: 800;
	font-size: 16px;
	color: #666666;
}

.flex-box {
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.price {
	font-weight: bold;
	font-size: 19px;
}

.quick {
	width: 70px;
	height: 30px;
	font-size: 12px;
	color: #7dc059;
	border: 1px solid #7dc059;
	border-radius: 8px;
	display: flex;
	align-items: center;
	justify-content: center;
}

.goods-box {
	display: flex;
	align-items: center;
	justify-content: center;
	gap: 30px;
	margin-top: 30px; 
}

.table-container {
	margin-top: 100px;
}
</style>
</head>
<body>
	<header>
		<h1>로컬푸드 상품 목록</h1>
	</header>
	<div class="goods-box">
		<div class="goods-container">
			<div class="img-box">
				<img class="food-img" src="./img/7만원_상품.jpg">
			</div>
			<p class="company">[의성로컬푸협드동조합]
			<p class="title">
				[의성로컬푸드직매장] <br> 농축산물 꾸러미 세트(7만원)
			<div class="flex-box">
				<p class="price">70,000원
				<p class="quick">무료배송
			</div>
		</div>
		<div class="goods-container">
			<div class="img-box">
				<img class="food-img" src="./img/5만원_상품.jpg">
			</div>
			<p class="company">[의성로컬푸협드동조합]
			<p class="title">
				[의성로컬푸드직매장] <br> 농축산물 꾸러미 세트(7만원)
			<div class="flex-box">
				<p class="price">50,000원
				<p class="quick">무료배송
			</div>
		</div>
		<div class="goods-container">
			<div class="img-box">
				<img class="food-img" src="./img/4만원_상품.jpg">
			</div>
			<p class="company">[의성로컬푸협드동조합]
			<p class="title">
				[의성로컬푸드직매장] <br> 농축산물 꾸러미 세트(7만원)
			<div class="flex-box">
				<p class="price">40,000원
				<p class="quick">무료배송
			</div>
		</div>
		<div class="goods-container">
			<div class="img-box">
				<img class="food-img" src="./img/한라봉_상품.jpg">
			</div>
			<p class="company">[의성로컬푸협드동조합]
			<p class="title">
				[의성로컬푸드직매장] <br> 한라봉&레몬 선물세트
			<div class="flex-box">
				<p class="price">38,000원
				<p class="quick">무료배송
			</div>
		</div>
	</div>
 	<div class="table-container">
	<table>
		<tr>
			<th>상품명</th>
			<th>설명</th>
			<th>가격</th>
		</tr>
		<%
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String password = "1234";

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM local_food");

			while (rs.next()) {
				String name = rs.getString("name");
				String description = rs.getString("description");
				int price = rs.getInt("price");
		%>
		<tr>
			<td><%=name%></td>
			<td><%=description%></td>
			<td><%=price%>원</td>
			<td><button class="buy-button">구매하기</button></td>
		</tr>
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		} finally {
		if (rs != null)
		try {
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (stmt != null)
		try {
			stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (conn != null)
		try {
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
		%>
	</table>
	</div>
</body>
</html>