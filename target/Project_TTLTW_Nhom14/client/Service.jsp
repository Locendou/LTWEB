<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">
<head>
<title><fmt:message key="service" bundle="${lang}"></fmt:message></title>
<link rel="icon" type="image" href="../image/HaLoicon.png" />

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
				<i class="fa fa-check fa-2x"></i>
				<fmt:message key="service" bundle="${lang}"></fmt:message>
				<fmt:message key="successfully.added.the.product" bundle="${lang}"></fmt:message>
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
								<fmt:message key="HaLo's.Shop.Service" bundle="${lang}"></fmt:message>
							</h1>
							<div class="article-content">
								<p>
									<span style="color: #FF8C00;"><strong><fmt:message
												key="Wholesale" bundle="${lang}"></fmt:message></strong></span>
								</p>

								<p>
									<fmt:message key="With.a.stable.supply" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="The.stable" bundle="${lang}"></fmt:message>
									<br /> <strong><fmt:message key="1.Baby.gap"
											bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="Goods.arrive" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="The.quality" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Wholesale.and.retail.in.bulk"
										bundle="${lang}"></fmt:message>
									<br /> &nbsp; &nbsp; &nbsp;&nbsp;<br /> <strong><fmt:message
											key="2.GW" bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="Goods.have.strong" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Goods.arrive" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Large" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Goods.arrive.as" bundle="${lang}"></fmt:message>
									<br /> &nbsp; &nbsp; &nbsp;&nbsp;<br /> <strong><fmt:message
											key="3.Top.Baby" bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="The.shop's" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Original" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="No.Large" bundle="${lang}"></fmt:message>
									<br /> &nbsp; &nbsp; &nbsp;&nbsp;<br /> <strong><fmt:message
											key="4.Coddle.Me" bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="Large.quantity" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Original.import" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Guaranteed" bundle="${lang}"></fmt:message>
									<br /> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />
									<strong><fmt:message key="5.ZARA" bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="The.quantity.imported" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="High.price" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Goods.arrive.monthly" bundle="${lang}"></fmt:message>
									<br /> &nbsp; &nbsp; &nbsp; &nbsp;<br /> <strong><fmt:message
											key="6.NEXT" bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="The.line.represents" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Ordered.goods" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="High.price" bundle="${lang}"></fmt:message>
									<br /> &nbsp; &nbsp; &nbsp;&nbsp;<br /> <strong><fmt:message
											key="7.Magic.Cube" bundle="${lang}"></fmt:message></strong><br />
									<fmt:message key="The.line" bundle="${lang}"></fmt:message>
									<br />
									<fmt:message key="Fashion.style" bundle="${lang}"></fmt:message>
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