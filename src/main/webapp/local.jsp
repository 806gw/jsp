<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.ResultSet, java.sql.Statement" %>
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
    </style>
</head>
<body>
    <header>
        <h1>로컬푸드 상품 목록</h1>
    </header>
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
                        <td><%= name %></td>
                        <td><%= description %></td>
                        <td><%= price %></td>
                        <td><button class="buy-button" onclick="alert('로그인이 되어야 합니다')">구매하기</button></td>
                    </tr>
                    <%
                }
            } catch (Exception e) {
                e.printStackTrace(); 
            } finally {
                if (rs != null) try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
                if (stmt != null) try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
                if (conn != null) try { conn.close(); } catch (Exception e) { e.printStackTrace(); }
            }
        %>
    </table>
</body>
</html>