<!DOCTYPE html>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <title>자기소개 입력</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
        }
    </style>
</head>
<body>

<form action="result" method="post" class="w-50 mx-auto mt-4">

    <div class="mb-3">
        <label for="name" class="form-label fw-bold">이름</label>
        <input type="text" name="name" class="form-control">
    </div>

    <div class="mb-3">
        <label for="age" class="form-label fw-bold">나이</label>
        <input type="text" name="age" class="form-control">
    </div>

    <div class="mb-3">
        <label for="mbti" class="form-label fw-bold">MBTI</label>
        <input type="text" name="mbti" class="form-control">
    </div>

    <div class="mb-3">
        <label for="foods" class="form-label fw-bold">좋아하는 음식</label>
        <input type="text" name="foods" class="form-control">
    </div>

    <button type="submit" class="btn btn-primary">제출하기</button>
</form>

</form>

</body>
</html>