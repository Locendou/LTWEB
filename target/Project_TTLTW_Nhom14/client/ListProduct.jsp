<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">
<head>
<title><fmt:message key="All.products" bundle="${lang}"></fmt:message></title>
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

					<jsp:include page="./header/Left.jsp"></jsp:include>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="sk-main-content-head">
							<div class="row">
								<div class="col-md-6 col-sm-6 breadcrumb-wrap">
									<ol class="breadcrumb">
										<li><a href="#">Trang chủ</a></li>
										<li class="active">Tất cả sản phẩm</li>
									</ol>
								</div>
								<div class="col-md-6 col-sm-6 head-hotline-wrap">
									<div class="head-hotline-inner" >
										<span>Hotline:</span><a href="tel:0364677119">0364677119</a>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<!-- End .sk-main-content-head -->
						<div class="sk-head-banner-wrap">
							<a href="#"><img
								src="//bizweb.dktcdn.net/100/117/632/themes/157694/assets/collection_banner_top.jpg?1564585558451"
								alt="Kidshop" class="img-responsive"></a>

						</div>
						<div class="sk-page-title">
							<h1>
								<c:choose>
									<c:when test="${cid==0}">
										<fmt:message key="All.products" bundle="${lang}"></fmt:message>
									</c:when>
									<c:when test="${cid==1}">
										<fmt:message key="Boy's.corner" bundle="${lang}"></fmt:message>
									</c:when>
									<c:when test="${cid==2}">
										<fmt:message key="Girl's.corner" bundle="${lang}"></fmt:message>
									</c:when>
									<c:when test="${cid==3}">
										<fmt:message key="Accessory" bundle="${lang}"></fmt:message>
									</c:when>
									<c:when test="${cid==4}">
										<fmt:message key="Promotion" bundle="${lang}"></fmt:message>
									</c:when>
								</c:choose>
							</h1>
						</div>

						<div class="product-nav-wrap">
							<div class="col-md-6 col-sm-6 sort-wrap no-padding-left"></div>
							<div class="col-md-6 col-sm-6 filter-wrap no-padding-right">
								<div class="filter-inner">
									<div id="sort-by">
										<c:url var="showProduct" value="ShowProductControl"></c:url>
										<form class="form-inline form-viewpro"
											action="${showProduct}?index=${tag}&cid=${cid}&search=${search}"
											method="post">
											<div class="form-group">
												<select class="sort-by-script" name="sort" id="selectFilter">
													<option value="pid-asc"
														<c:if test="${sort==null}">selected</c:if>>
														<fmt:message key="default" bundle="${lang}"></fmt:message></option>
													<option value="price-asc"
														<c:if test="${sort=='priceProduct-asc'}">selected</c:if>>
														<fmt:message key="prices.increase" bundle="${lang}"></fmt:message></option>
													<option value="price-desc"
														<c:if test="${sort=='priceProduct-desc'}">selected</c:if>>
														<fmt:message key="prices.decrease" bundle="${lang}"></fmt:message></option>
													<option value="name-asc"
														<c:if test="${sort=='nameProduct-asc'}">selected</c:if>>
														<fmt:message key="A-Z" bundle="${lang}"></fmt:message></option>
													<option value="name-desc"
														<c:if test="${sort=='nameProduct-desc'}">selected</c:if>>
														<fmt:message key="Z-A" bundle="${lang}"></fmt:message></option>
												</select>
												<button type="submit"
													value="<fmt:message key="filter" bundle="${lang}"></fmt:message>"
													style="display: none" id="locButton"></button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="sk-product-list">
							<div class="row">
								<c:url value="DetailControl" var="detailP"></c:url>
								<c:forEach var="o" items="${listProduct}">
									<div class="col-md-3 col-sm-6 col-xs-12">
										<div class="discounts-product-right">
											<div class="discounts-product-image">
												<a href="${detailP}?pid=${o.idProduct}"> <img src="./images/${o.imageProducts.get(0).getImage()}"
													alt="${o.imageProducts.get(0).getImage()}" class="img-responsive">
												</a>

												<div class="price-box">
													<span class="price"> ${o.priceProduct} </span> <span
														class="price-compare"> ${o.priceProduct}₫ </span>
												</div>

											</div>
											<div class="discounts-product-info">
												<h3 class="item-title">
													<a href="${detailP}?pid=${o.idProduct}" title="${o.nameProduct }">${o.nameProduct }</a>
												</h3>
											</div>
											<div class="text-center">
												<a href="${detailP}?pid=${o.idProduct}">
													<button class="button btn-cart btn-more product-atc"
														title="Mua hàng" type="button">
														<span><img src="./images/Muangay.png" alt="" /></span>
													</button>
												</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="sk-category-paging-wrap">
						<div class="pull-right">
							<ul class="pagination">
								<c:if test="${tag>1 }">
									<li><a
										href="${ShowProduct}?index=${tag-1}&sort=${sort}&cid=${cid}&search=${search}"
										aria-label="Previus"> <span class="fa fa-caret-left"></span>
									</a></li>
								</c:if>
								<c:forEach begin="1" end="${endP}" var="i">
									<c:if test="${i == tag}">
										<li class="page-item active"><c:if test="${!empty cid}">
												<a
													href="${ShowProduct}?index=${i}&cid=${cid}&sort=${sort}&search=${search}"
													class="page-link">${i}</a>
											</c:if> <c:if test="${empty cid}">
												<a
													href="${ShowProduct}?index=${i}&search=${search}&sort=${sort}&cid=${cid}"
													class="page-link">${i}</a>
											</c:if></li>
									</c:if>
									<c:if test="${i != tag}">
										<li class="page-item"><c:if test="${!empty cid}">
												<a
													href="${ShowProduct}?index=${i}&cid=${cid}&sort=${sort}&search=${search}"
													class="page-link">${i}</a>
											</c:if> <c:if test="${empty cid}">
												<a
													href="${ShowProduct}?index=${i}&search=${search}&sort=${sort}"
													class="page-link">${i}</a>
											</c:if></li>
									</c:if>
								</c:forEach>
								<c:if test="${tag< endP}">
									<li><a
										href="${ShowProduct}?index=${tag+1}&sort=${sort}&cid=${cid}&search=${search}"
										aria-label="Next"> <span class="fa fa-caret-right"></span>
									</a></li>
								</c:if>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Main Content -->
	<jsp:include page="./footer/Footer.jsp"></jsp:include>
	<script type="text/javascript">
		$("#selectFilter").on("change", function() {
			$("#locButton").click();
		})
	</script>
</body>


</html>