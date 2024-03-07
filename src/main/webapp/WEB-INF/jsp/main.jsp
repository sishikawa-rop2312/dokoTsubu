<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, model.Mutter, java.util.List" %>
<%
//セッションスコープからユーザ情報を取得
User loginUser = (User)session.getAttribute("loginUser");

// アプリケーションスコープに保存されたつぶやきリストを取得
List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");

// リクエストスコープに保存されたエラーメッセージを取得
String errorMsg = (String)request.getAttribute("errorMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
<style>
.list {
	padding: 0;
	border-bottom: 1px solid #ccc;
}
.list li {
	border-top: 1px solid #ccc;
    padding: 5px 0;
}
.center {
	display: flex;
    align-items: center;
}
.icon {
	border: 2px solid #0cc100;
    border-radius: 50%;
    display: inline-block;
    margin-left: 5px;
}
</style>
</head>
<body>
<h1>どこつぶメイン</h1>
<p class="center">
<%= loginUser.getName() %><img class="icon" src="images/p00<%= loginUser.getIcon() %>.gif">さん、ログイン中
<a href="Logout">ログアウト</a>
</p>
<p><a href="Main">更新</a></p>
<form action="Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<% if (errorMsg != null) { %>
<p><%= errorMsg %></p>
<% } %>
<ul class="list">
<% for(Mutter mutter : mutterList) { %>
<li class="center"><%= mutter.getUserName() %><img class="icon" src="images/p00<%= mutter.getIcon() %>.gif">:<%= mutter.getText() %></li>
<% } %>
</ul>
</body>
</html>