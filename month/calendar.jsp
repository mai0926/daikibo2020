<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.time.LocalDate"%>
<%
String stringYear = request.getParameter("year");
String stringMonth = request.getParameter("month");
int year = 0;
int month = 0;
try{
 year = Integer.parseInt(stringYear); // String型をint型に変換
 month = Integer.parseInt(stringMonth); // String型をint型に変換
}catch (NumberFormatException e) { // 数値の書式に誤りあり
 out.println("年月の指定に誤りがあります");
 return;
}
if( month < 1 || month > 12 ){
out.println("年月の指定に誤りがあります");
return;
}
// 年月の取得
LocalDate date = LocalDate.of(year, month, 1); // 指定された年月の1日を表すオブジェクトを作成する	
int len = date.lengthOfMonth();  // 日数を求める
int youbi = date.getDayOfWeek().getValue(); // 指定された年月の1日の曜日を求める 月曜日が1で，日曜日が7
int i;
%>
<html>
<body>
<h1><%=year%>年<%=month%>月</h1>
<table>
<thead>
<tr>
<th><font color="red">日</font></th>
<th>月</th>
<th>火</th>
<th>水</th>
<th>木</th>
<th>金</th>
<th>土</th>
</tr>
</thead>
<tbody align="right">
<tr>
<%
for( i = youbi; i > 0; i-- ){ // 空白の挿入
if( i == 7 ){
 continue;
}
%>
<td></td>
<%
}
for( i = 1; i <= len; i++ ){
if( (youbi+i)%7 == 1 ){ // 日曜日は赤に
%>
<th><font color="red"><%=i%></font></th>
<%
}else{
out.println("<td>"+i+"</td>");
}
if( (youbi+i)%7 == 0 ){ // 改行
%>
</tr>
<tr>
<%
}
}
%>
</table>
</br><button type="button" onclick="location.href='./index.html'">戻る</button>
</body>
</html>