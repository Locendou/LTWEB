<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">
<head>
<title><fmt:message key="Contact" bundle="${lang}"></fmt:message></title>
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
		<!-- Main Content -->
		<div class="main-content">
			<div class="container">
				<div class="row">
					<jsp:include page="./header/Left.jsp"></jsp:include>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="article">
							<h1 class="article-name">
								<fmt:message key="Contact" bundle="${lang}"></fmt:message>
							</h1>
							<div class="article-content">
								<h2 id="sw_footer-general_17">
									<span style="color: #FFA500;"><strong>HaLo's
											Shop - </strong></span><span style="color: #ADD8E6;"><strong>
											<fmt:message key="CHILDREN'S.FASHION" bundle="${lang}"></fmt:message>
									</strong></span>
								</h2>

								<p>
									<fmt:message
										key="HaLo's.Shop.specializes.in.selling.children's.clothes.online.with"
										bundle="${lang}"></fmt:message>
									<b><fmt:message key="thousands.of.designs" bundle="${lang}"></fmt:message></b>
									<fmt:message key="for.you.to.choose.for.your.baby"
										bundle="${lang}"></fmt:message>
									<br />
									<fmt:message
										key="Please.order.online.to.enjoy.more.discounts.at.HaLo's.Shop"
										bundle="${lang}"></fmt:message>
									<br />
									<fmt:message
										key="Choose.to.buy.now.the.latest.models.of.children's.clothing.in.the"
										bundle="${lang}"></fmt:message>
									<b><fmt:message key="Latest.Goods.category"
											bundle="${lang}"></fmt:message></b>
								</p>

								<h3>
									<span style="color: #FFA500;"> <b><fmt:message
												key="quick.contact.information" bundle="${lang}"></fmt:message></b></span>
								</h3>

								<p>
									<b>Hotline: 0374781483 <fmt:message key="or"
											bundle="${lang}"></fmt:message> 0364677119
									</b>
								</p>

								<p>
									<b>Zalo: 0374781483 <fmt:message key="or" bundle="${lang}"></fmt:message>
										0364677119
									</b>
								</p>

								<p>
									<b>FB: <a
										href="https://www.facebook.com/Thuy.Hao.15622RynViaKingdom">
											Halo's Shop</a></b>
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