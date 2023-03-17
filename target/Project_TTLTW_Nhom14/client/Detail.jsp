
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8" />
<title>${detail.nameProduct}</title>
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
		<div class="category-page-layout">
			<div class="container">
				<div class="row">
					<article
						class="col-lg-12 col-md-12 col-sm-12 col-xs-12 sk-product-detail-content-col">
						<!-- End .sk-main-content-head -->
						<div class="row sk-sigle-content product-view"
							itemtype="http://schema.org/Product">
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="sk-product-slider-wrap">
									<div class="product-img-box">
										<div id="sync1" class="owl-carousel css_detail_owl">
											<c:forEach var="o" items="${detail.imageProducts}">
												<div class="item large-image">
													<img src="./images/${o.getImage()}" alt="">
												</div>
											</c:forEach>
										</div>
										<div id="sync2" class="owl-carousel">
											<c:forEach var="o" items="${detail.imageProducts}">
												<div class="item">
													<img src="./images/${o.getImage()}" alt="">
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">

								<div class="sk-page-detail-title">
									<h1 itemprop="name" class="pd-name">${detail.nameProduct}</h1>
								</div>
								<div class="sk-price-box clearfix">
									<div class="pull-left">

										<span><fmt:message key="price" bundle="${lang}"></fmt:message>:</span>
										<span class="price">${detail.priceProduct} VNĐ</span>
									</div>
									<div class="stock pull-left">

										<div class="availability in-stock pull-right">
											<span><fmt:message key="Stocking" bundle="${lang}"></fmt:message></span>
										</div>

									</div>
								</div>

								<p class="pd-description-mini">${detail.description}</p>
								<div class="pd-form">
									<div class="pd-form-top clearfix">
										<div class="selector-wrapper">
											<select id="product-select" name="variantId"
												class="single-option-selector">

												<option value="6383545">Size 214 / ${detail.priceProduct}₫</option>

												<option value="6383546">Size 224 / ${detail.priceProduct}₫</option>

												<option value="6383547">Size 234 / ${detail.priceProduct}₫</option>

												<option value="6383548">Size 244 / ${detail.priceProduct}₫</option>

											</select>
										</div>
									</div>
									<div class="pd-form-bottom clearfix">
										<c:url var="addToCart" value="AddToCartControl"></c:url>
										<form action="${addToCart}?pid=${ detail.idProduct}" method="post">
											<input type="number" class="single-input-selector" value="1"
												min="1" name="quantity">

											<button
												style="padding: 10px 23px; border: 0; background-color: #79bd9a; text-transform: uppercase; font-weight: 700; color: #fff"
												type="submit" class="button" title="Đặt hàng" type="submit">
												<span><fmt:message key="ORDER" bundle="${lang}"></fmt:message></span>
											</button>
										</form>
									</div>

									<div class="sk-hotline-block">
										<span><fmt:message key="Call.now.for.buying.advice"
												bundle="${lang}"></fmt:message></span>
										<div class="sk-widget-title pink-bg-widget">
											<h5>
												Hotline: <a href="tel:">0364677119</a>
											</h5>
										</div>
									</div>
									<div class="clearfix"></div>
									<div class="sk-shipping">
										<img
											src="//bizweb.dktcdn.net/100/117/632/themes/157694/assets/icon-dt.jpg?1564585558451" />
									</div>

								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>
		<!-- End Main Content -->
		<jsp:include page="./footer/Footer.jsp"></jsp:include>
	</div>
</body>
</html>