<%--
  Created by IntelliJ IDEA.
  User: 임태규
  Date: 2024-04-26
  Time: 오후 5:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    let test = {
        init: function () {
        }
    };
    $(function () {
        test.init();
    });
</script>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>피기뱅크</title>
    <script type="module" defer src="./main.js"></script>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<header class="header">
    <a class="d-flex flex-row" href="/home" >
        <img class="header_tosslogo mb-3" src="/asset/logo.png" alt="" class="headerIcon">
    </a>
    <ul class="navbar_menu" >
        <li class="navbar_item"><a href="http://127.0.0.1:5500/index.html">소개</a></li>
        <li class="navbar_item"><a href="http://127.0.0.1:5500/index.html">자주 묻는 질문</a></li>
        <li class="navbar_item"><a href="http://127.0.0.1:5500/index.html">Login</a></li>
    </ul>
</header>

<c:choose>
    <c:when test="${center == null}">
        <jsp:include page="indexCenter.jsp"/>
    </c:when>
    <c:otherwise>
        <jsp:include page="${center}.jsp"/>
    </c:otherwise>
</c:choose>


<footer class="footer">
    <div class="footer_container">
        <div class="footer_menu">
            <ul class="footer_content">
                <li><b>서비스</b></li>
                <li><a href="http://127.0.0.1:5500/index.html">공지사항</a></li>
                <li><a href="http://127.0.0.1:5500/index.html">예적금 비교</a></li>
                <li><a href="http://127.0.0.1:5500/index.html">Ai 추천</a></li>
                <li><a href="http://127.0.0.1:5500/index.html">고객센터</a></li>
            </ul>
            <ul class="footer_content">
                <li><b>고객센터</b></li>
                <li><a href="http://127.0.0.1:5500/index.html">전화: 1599-4905(24시간 연중무휴)</a></li>
                <li><a href="http://127.0.0.1:5500/index.html">이메일(고객전용): support@toss.im</a></li>
                <li><a href="http://127.0.0.1:5500/index.html">이메일(외부기관전용): safe@toss.im</a></li>
                <li><a href="http://127.0.0.1:5500/index.html">민원 접수</a></li>
            </ul>
        </div>


    </div>
    </div>
</footer>
</body>
</html>