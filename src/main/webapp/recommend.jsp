<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의성 추천</title>
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

.link a#home:hover {
    color: white;
    background-color: #ff6347;
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
    font-weight: 800;
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
        <h1>의성 추천</h1>
    </header>
    <div class="container">
        <div class="link">
            <a href="main.jsp" id="home">홈으로 돌아가기</a>
        </div>
        <h2>의성 관광 명소</h2>
        <div class="pro-container">
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
                    String query = "SELECT * FROM attractions";
                    rs = stmt.executeQuery(query);

                    while(rs.next()) {
                        String name = rs.getString("name");
                        double rating = rs.getDouble("rating");
                        String description = rs.getString("description");
                        String imageUrl = rs.getString("image_url");
            %>
            <div class="promotion">
                <div>
                    <div class="location">
                        <img src="<%= imageUrl %>" alt="">
                    </div>
                    <div class="info">
                        <p class="loc-name"><%= name %></p>
                        <p class="loc-info">
                            <%= rating %> ⭐ <br> <%= description %>
                        </p>
                        <p class="loc-info">ㅤ</p>
                    </div>
                </div>
            </div>
            <% 
                    }
                } catch(Exception e) {
                    e.printStackTrace();
                } finally {
                    if(rs != null) try { rs.close(); } catch(SQLException ex) {}
                    if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}
                    if(conn != null) try { conn.close(); } catch(SQLException ex) {}
                }
            %>
        </div>
    </div>
    <footer>
        <p>&copy; 2024 의성 홍보 사이트</p>
    </footer>
</body>
</html>
