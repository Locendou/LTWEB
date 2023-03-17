<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<html lang="vi">
<head>
<title>Error 404</title>
<link rel="icon" type="image" href="../image/HaLoicon.png" />
<jsp:include page="./link/Link.jsp"></jsp:include>
</head>
<body>
	<!-- Load page -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<jsp:include page="./header/Header.jsp"></jsp:include>
	<section id="aa-error">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-error-area">
						<h2>404</h2>
						<span><fmt:message key="Sorry" bundle="${lang}"></fmt:message></span>
						<c:url value="IndexControl" var="indexP"></c:url>
						<a href="${pageContext.request.contextPath}/${indexP}"><fmt:message
								key="Back.to.HOME" bundle="${lang}"></fmt:message></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<jsp:include page="./footer/Footer.jsp"></jsp:include>
</body>
</html>
