<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">

<head>
<title><fmt:message key="Payments" bundle="${lang}"></fmt:message></title>
<link rel="icon" type="image" href="../image/HaLoicon.png" />

<jsp:include page="./link/Link.jsp"></jsp:include>
</head>

<body>
	<!-- Load page -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<c:url var="Login" value="/Login" />
	<div class="page">
		<jsp:include page="./header/Header.jsp"></jsp:include>
		<div id="add_succes" style="display: none;">
			<p>
				<i class="fa fa-check fa-2x"></i>
				<fmt:message key="successfully.added.the.product" bundle="${lang}"></fmt:message>
			</p>
		</div>
		<!-- Main Breadcrumb -->
		<div class="main-breadcrumb">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li><a href="#"><fmt:message key="Home" bundle="${lang}"></fmt:message></a></li>
							<li class="active"><fmt:message key="log.in"
									bundle="${lang}"></fmt:message></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- End Main Breadcrumb -->
		<!-- Main Content -->

		<section id="aa-product-category">
			<div class="container">
				<div class="row">
					<div>
						<h1 style="text-align: center; color: red;">
							<fmt:message key="Halo's.Shop.payment.methods" bundle="${lang}"></fmt:message>
						</h1>
						<p>
							<fmt:message key="Currently" bundle="${lang}"></fmt:message>
							<strong>Halo's Shop </strong>
							<fmt:message key="has" bundle="${lang}"></fmt:message>
						</p>
						<strong><fmt:message key="Cash" bundle="${lang}"></fmt:message></strong>
						<p>
							<fmt:message key="After" bundle="${lang}"></fmt:message>
							<strong>Halo's Shop </strong>
							<fmt:message key="customer" bundle="${lang}"></fmt:message>
						</p>
						<strong><fmt:message key="Payment.by" bundle="${lang}"></fmt:message></strong>
						<p>
							<fmt:message key="After" bundle="${lang}"></fmt:message>
							<strong>HaLo's Shop </strong>
							<fmt:message key="'s.customer" bundle="${lang}"></fmt:message>
						</p>

						<strong><fmt:message key="1.BIDV" bundle="${lang}"></fmt:message></strong>
						<p style="margin-left: 20px;">
							<fmt:message key="name" bundle="${lang}"></fmt:message>
							<br>
							<fmt:message key="bank" bundle="${lang}"></fmt:message>
							<br>
							<fmt:message key="account.number" bundle="${lang}"></fmt:message>
						</p>

						<strong><fmt:message key="2.MOMO" bundle="${lang}"></fmt:message></strong>
						<p style="margin-left: 20px;">
							<fmt:message key="name" bundle="${lang}"></fmt:message>
							<br>
							<fmt:message key="Phone" bundle="${lang}"></fmt:message>
						</p>

						<strong><fmt:message key="3.ZaloPay" bundle="${lang}"></fmt:message></strong>
						<p style="margin-left: 20px;">
							<fmt:message key="name" bundle="${lang}"></fmt:message>
							<br>
							<fmt:message key="Phone" bundle="${lang}"></fmt:message>
						</p>
						<i><fmt:message key="After.payment" bundle="${lang}"></fmt:message></i><br>
						<br>
					</div>
				</div>
			</div>
		</section>
		<!-- End Main Content -->
		<jsp:include page="./footer/Footer.jsp"></jsp:include>
	</div>
</body>

</html>