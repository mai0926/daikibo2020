<%@ page contentType="text/html; charset=UTF-8"%>

<html>

<head>
    <meta charset="UTF-8"><!--文字コード指定-->

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="display.css">

    <title>timetable</title> <!--文書のタイトルを設定-->
</head>

<body bgcolor="#ffffdd"> <!--ここから本文-->

    <div style="text-align: center;">

        <p>306203 山口真衣</p>
        <header>

        <!--ナビゲーションバー-->
            <nav class="global-nav">
                <ul class="nav-list">
                    <li class="nav-item"><a href="index.html" class="navlink">ホーム</a></li>
                    <li class="nav-item"><a href="timetable.html">時間割登録</a></li>
                    <li class="nav-item"><a href="semester_register.html">学期登録</a></li>
                    <li class="nav-item"><a href="homework_register.html">宿題登録</a></li>
                    <li class="nav-item"><a href="exam.html">試験登録</a></li>
                    <li class="nav-item"><a href="reschedule.html">振替授業登録</a></li>
                    <li class="nav-item"><a href="logout.html">ログアウト</a></li>
                </ul>
            </nav>
        </header>
        <hr>

        <%
        request.setCharacterEncoding("utf-8");
        String subject[][] = new String[6][6];
        subject = (String[][])request.getAttribute("subject");
        %>

        <h1>時間割</h1>

        <table bgcolor="ffffff" border="1" style="border-collapse: collapse" align="center">
            <thead>
                <tr>
                    <th></th>
                    <th>月</th>
                    <th>火</th>
                    <th>水</th>
                    <th>木</th>
                    <th>金</th>
                    <th>土</th>
                </tr>
            </thead>

            <tr>
                <td>1</td>
                <%
                int i;
                for( i = 0; i < 6; i++ ){
                %>
                <td><%= subject[i][0] %></td>
                <%
                }
                %>
            </tr>

            <tr>
                <td>2</td>
                <%
                for( i = 0; i < 6; i++ ){
                %>
                <td><%= subject[i][1] %></td>
                <%
                }
                %>
            </tr>

            <tr>
                <td>3</td>
                <%
                for( i = 0; i < 6; i++ ){
                %>
                <td><%= subject[i][2] %></td>
                <%
                }
                %>
            </tr>

            <tr>
                <td>4</td>
                <%
                for( i = 0; i < 6; i++ ){
                %>
                <td><%= subject[i][3] %></td>
                <%
                }
                %>
            </tr>

            <tr>
                <td>5</td>
                <%
                for( i = 0; i < 6; i++ ){
                %>
                <td><%= subject[i][4] %></td>
                <%
                }
                %>
            </tr>

            <tr>
                <td>6</td>
                <%
                for( i = 0; i < 6; i++ ){
                %>
                <td><%= subject[i][5] %></td>
                <%
                }
                %>
            </tr>
        </table>
    </div>

</body>
