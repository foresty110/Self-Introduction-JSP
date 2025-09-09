<!DOCTYPE html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
    <title>자기소개 결과 화면</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>

<body>
<form class="w-50 mx-auto mt-4">
    <%
        // request에서 이름, 나이, MBTI, 음식 배열 가져오기
        String name = (String) request.getAttribute("name");
        String age = (String) request.getAttribute("age");
        String mbti = (String) request.getAttribute("mbti");
        String[] foods = (String[]) request.getAttribute("foods");

        out.print(name + "님은 " + age + "살의 " + mbti + " 성격을 가진 분이며, 좋아하는 음식으로는 ");
        for (int i = 0; i < foods.length; i++) {
            out.print(foods[i]);
            if (i < foods.length - 1) {
                out.print(", ");
            } else {
                out.print(" 등이 있습니다.");
            }
        }

    %>

</form>
</body>

</html>