<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">
<head>
<title><fmt:message key="Introduce" bundle="${lang}"></fmt:message></title>
<link rel="icon" type="image" href="../images/HaLoicon.png" />

<jsp:include page="./link/Link.jsp"></jsp:include>
</head>
<body>
	<!-- Load page -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<div class="page">
		<jsp:include page="./header/Header.jsp"></jsp:include>
		<div id="add_succes" style="display: none;">
			<p>
				<i class="fa fa-check fa-2x"></i>Thêm sản phẩm thành công
			</p>
		</div>
		<!-- Main Content -->
		<div class="main-content">
			<div class="container">
				<div class="row">
					<jsp:include page="./header/Left.jsp"></jsp:include>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="article">
							<h1 class="article-name">
								<fmt:message key="Introduce" bundle="${lang}"></fmt:message>
							</h1>
							<div class="article-content">
								<p>
									<strong><fmt:message key="Come" bundle="${lang}"></fmt:message></strong>
								</p>

								<p>
									<fmt:message key="Because" bundle="${lang}"></fmt:message>
								</p>

								<p>
									<fmt:message key="With" bundle="${lang}"></fmt:message>
								</p>

								<p>
									<fmt:message key="The" bundle="${lang}"></fmt:message>
								</p>

								<p>
									<fmt:message key="Come.to" bundle="${lang}"></fmt:message>
								</p>

								<p style="text-align: center;">
									<img src="../images/design.png" />
								</p>

								<p>
									<fmt:message key="And" bundle="${lang}"></fmt:message>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Main Content -->
		<jsp:include page="./footer/Footer.jsp"></jsp:include>
	</div>
</body>
</html>