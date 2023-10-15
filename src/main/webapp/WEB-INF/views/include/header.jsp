<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path0" value="${pageContext.request.contextPath }"/>

<header class="navigation">
  <div class="header-top">
    <div class="container" style="padding: 9px 15px">
      <div class="columns is-gapless is-justify-content-space-between is-align-items-center">
        <div class="column is-6-desktop is-4-tablet has-text-left-desktop has-text-centered-mobile">
        </div>
        <div class="column is-6-desktop is-8-tablet">
          <div class="header-top-right has-text-right-tablet has-text-centered-mobile">
            <%--<a href="https://www.facebook.com/themefisher" target="_blank"><i class="icofont-facebook"></i></a>
            <a href="https://github.com/themefisher/" target="_blank"><i class="icofont-github"></i></a>
            <a href="#" target="_blank"><i class="icofont-linkedin"></i></a>--%>
            <c:if test="${empty sid }">
              <a href="${path0 }/user/loginForm">
                <i class="icofont-login has-text-white"> 로그인</i>
              </a>
              <a href="${path0 }/user/agree">
                <i class="icofont-user has-text-white"> 회원가입</i>
              </a>
              <a href="#">
                <i class="icofont-google-map has-text-white"> 오시는길</i>
              </a>
            </c:if>
              <c:if test="${!empty sid && sid ne 'admin'}">
                <a href="${path0 }/user/logout">
                  <i class="icofont-login has-text-white"> 로그아웃</i>
                </a>
                <a href="${path0 }/user/mypageCourse">
                  <i class="icofont-user has-text-white"> 마이페이지</i>
                </a>
                <a href="#">
                  <i class="icofont-google-map has-text-white"> 오시는길</i>
                </a>
                <a href="${path0 }/admin/list">
                  <i class="icofont-google-map has-text-white"> 관리자 페이지</i>
                </a>
              </c:if>
              <c:if test="${sid eq 'admin' }">
                <a href="${path0 }/user/logout">
                  <i class="icofont-login has-text-white"> 로그아웃</i>
                </a>
                <a href="${path0 }/user/mypageCourse">
                  <i class="icofont-user has-text-white"> 마이페이지</i>
                </a>
                <a href="${path0 }/admin/list">
                  <i class="icofont-google-map has-text-white"> 관리자 페이지</i>
                </a>
              </c:if>
            <%--<a href="donation.html" class="top-btn">Donate Now</a>--%>
          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="container" id="navbar-container">
    <nav class="navbar" role="navigation" aria-label="main navigation">
      <div class="navbar-brand">
        <a class="navbar-item" href="https://bulma.io">
          <img src="https://bulma.io/images/bulma-logo.png" width="112" height="28" />
        </a>

        <a
                role="button"
                class="navbar-burger"
                aria-label="menu"
                aria-expanded="false"
                data-target="navbarBasicExample"
        >
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>

      <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-start"></div>

        <div class="navbar-end">
          <ul class="navbar-start" style="flex-grow: 1; justify-content: center;">
            <li class="navbar-item has-dropdown is-hoverable">
              <a class="navbar-link">수강신청</a>
              <div class="navbar-dropdown">
                <a class="navbar-item" href="${path0 }/course/list">강의 게시판</a>
                <a class="navbar-item" href="#">개강 일정</a>
              </div>
            </li>

            <li class="navbar-item">
              <a class="navbar-link" href="#">무료 강의</a>
            </li>

            <li class="navbar-item has-dropdown is-hoverable">
              <a class="navbar-link">커뮤니티</a>
              <div class="navbar-dropdown">
                <a class="navbar-item" href="#">공지사항</a>
                <a class="navbar-item" href="#">자주 묻는 질문</a>
                <a class="navbar-item" href="#">후기</a>
              </div>
            </li>

            <li class="navbar-item">
              <a class="navbar-link" href="#">자료실</a>
            </li>
            <%--<li class="navbar-item">
                <a class="navbar-link" href="contact.html">Contact</a>
            </li>--%>
          </ul>        </div>
      </div>
    </nav>
  </div>

</header>