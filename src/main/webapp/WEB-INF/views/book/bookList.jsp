<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파일 자료 목록</title>
    <!-- 헤드 부분 인클루드 -->
    <jsp:include page="../include/head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include>
<div class="container is-fullhd">
    <!-- 헤더 부분 인클루드 -->
    <div class="content" id="contents" style="min-height: 1000px;">
        <div class="row column text-center">
            <h2 class="h1">자료실 목록</h2>
            <hr>
            <div class="container">
                <table class="table table-active">
                    <thead>
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성일</th>
                        <th>읽은횟수</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${not empty bookboardList}">
                        <c:forEach var="board" items="${bookboardList }">
                            <tr class="table-info">
                                <td>${board.bookBoard.postNo}</td>
                                <td><a href="${path1}/book/getBookboard?postNo=${board.bookBoard.postNo}">${board.bookBoard.title}</a></td>
                                <td>${board.bookBoard.regdate}</td>
                                <td>${board.bookBoard.visited}
                                    <c:if test="${not empty board.bookList}">
                                        <img src="${path1}/resources/icon/disk.png" alt="디스크이미지" style="width:24px;height:24px;"/>
                                    </c:if>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <c:if test="${empty bookboardList}">
                        <tr>
                            <td colspan="4">아직 게시된 자료글이 없습니다.</td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
                <c:if test="${sid.equals('admin')}">
                    <a href="${path1}/book/bookUpload" class="button is-primary">교재 등록</a>
                </c:if>
            </div>
        </div>
    </div>
</div>
<!-- 푸터 부분 인클루드 -->
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>