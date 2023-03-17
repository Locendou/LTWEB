<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<div class="sk-qickLink-section">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-4 sk-qickLink-item">
				<h5 class="sk-qickLink-title">
					<fmt:message key="contact.us" bundle="${lang}"></fmt:message>
				</h5>
				<ul class="sk-qickLink-list">
					<li><fmt:message key="no" bundle="${lang}"></fmt:message>197,
						<fmt:message key="Quarter" bundle="${lang}"></fmt:message> 6, <fmt:message
							key="Thu.Duc.City" bundle="${lang}"></fmt:message></li>
					<li>(+84)0364677119 - (+84) 0374781483</li>
					<li><fmt:message
							key="The.shop.is.open.from.8.00.a.m..to.8.00.p.m..Monday.to.Friday"
							bundle="${lang}"></fmt:message></li>
				</ul>
				<h5 class="sk-qickLink-title">
					<fmt:message key="connect.with.us" bundle="${lang}"></fmt:message>
				</h5>
				<ul class="sk-qickLink-social">
					<li><a href="#"> <i class="fa fa-facebook-official"
							aria-hidden="true"></i>
					</a></li>
					<li><a href="#"> <i class="fa fa-twitter-square"
							aria-hidden="true"></i>
					</a></li>
					<li><a href="#"> <i class="fa fa-youtube-play"
							aria-hidden="true"></i>
					</a></li>
					<li><a href="#"> <i class="fa fa-google-plus-square"
							aria-hidden="true"></i>
					</a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-2 sk-qickLink-item">
				<h5 class="sk-qickLink-title">
					<fmt:message key="information" bundle="${lang}"></fmt:message>
				</h5>
				<ul class="sk-qickLink-list">

					<li><a href="#"><fmt:message key="Your.account"
								bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message key="Purchase.history"
								bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message
								key="Purchase.and.sale.policy" bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message key="Guide.to.buying.online"
								bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message key="Contact"
								bundle="${lang}"></fmt:message></a></li>

				</ul>
			</div>
			<div class="col-md-2 col-sm-2 sk-qickLink-item">
				<h5 class="sk-qickLink-title">
					<fmt:message key="PRODUCT" bundle="${lang}"></fmt:message>
				</h5>
				<ul class="sk-qickLink-list">
					<li class=""><a href="#"><fmt:message key="All.products"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Boy's.corner"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Girl's.corner"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Accessory"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Promotion"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Children.toy"
								bundle="${lang}"></fmt:message></a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-2 sk-qickLink-item">
				<h5 class="sk-qickLink-title">
					<fmt:message key="BLOG.LINK" bundle="${lang}"></fmt:message>
				</h5>
				<ul class="sk-qickLink-list">

					<li><a href="#"><fmt:message key="Mother's.Guide"
								bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message key="Special.offers"
								bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message key="Fashion.News"
								bundle="${lang}"></fmt:message></a></li>

					<li><a href="#"><fmt:message key="Shared.corner"
								bundle="${lang}"></fmt:message></a></li>
				</ul>
			</div>
			<div class="col-md-2 col-sm-2 sk-qickLink-item">
				<h5 class="sk-qickLink-title">
					<fmt:message key="POLICY" bundle="${lang}"></fmt:message>
				</h5>
				<ul class="sk-qickLink-list">
					<li class=""><a href="#"><fmt:message key="All.products"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Boy's.corner"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Girl's.corner"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Accessory"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Promotion"
								bundle="${lang}"></fmt:message></a></li>

					<li class=""><a href="#"><fmt:message key="Children.toy"
								bundle="${lang}"></fmt:message></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<footer>
	<div class="container text-center">
		©
		<fmt:message key="Copyright.by.web.developers" bundle="${lang}"></fmt:message>
		<a href="https://www.facebook.com/leminh.long.9678/" title="author"
			rel="nofollow">Lê Minh Long</a> & <a
			href="https://www.facebook.com/Thuy.Hao.15622RynViaKingdom"
			title="author" rel="nofollow">La Thị Thúy Hảo</a>
	</div>
</footer>
<script type="text/javascript">
	$(window).on('load', function() {
		$(".loader").fadeOut();
		$("#preloder").delay(200).fadeOut("slow");

		/*------------------
		    FIlter
		--------------------*/
		$('.filter__controls li').on('click', function() {
			$('.filter__controls li').removeClass('active');
			$(this).addClass('active');
		});
		if ($('.filter__gallery').length > 0) {
			var containerEl = document.querySelector('.filter__gallery');
			var mixer = mixitup(containerEl);
		}
	});
</script>
