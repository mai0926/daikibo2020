<%@ page contentType="text/html;charset=UTF-8"%>
<% //フォームデータの取得
   String carname = request.getParameter("cars");
%>
<html>
<head><title><%= carname %></title></head>
<body><center>
<h2><%=carname%></h2><hr/>
お買い上げありがとうございました。<br/>
</center></body>
</html>