<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>Pi99yBank</title>
  </head>
  <body>
    <!-- start of navigation -->
    <!-- end of navigation -->

    <!-- start of center -->
    <c:choose>
      <c:when test="${center == null}">
        <jsp:include page="main.jsp"/>
      </c:when>
      <c:otherwise>
        <jsp:include page="${center}.jsp"/>
      </c:otherwise>
    </c:choose>
    <!-- end of center -->

    <!-- start of footer -->
    <div class="footer">
      <div class="container text-center">
        <div>
          <a href="${kakaoUrl}">
            <img src="<c:url value="/img/kakao.png"/>" alt="카카오 로그인">
          </a>
        </div>
      </div>
    </div>
    <!-- end of footer -->
  </body>
</html>
