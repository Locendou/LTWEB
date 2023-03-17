<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<aside class="col-lg-4 col-md-4 hidden-sm hidden-xs">
	<div class="sk-leftSidebar-widget category-menu-widget">
		<div class="sk-widget-title green-bg-widget">
			<h5><fmt:message key="CATEGORY" bundle="${lang}"></fmt:message></h5>
		</div>
		<div class="category-menu-wrap block-content">
			<ul class="category-menu-inner block-list">
				<c:url var="showProduct" value="ShowProductControl"></c:url>
				<li><a 
					href="${pageContext.request.contextPath}/${showProduct}?cid=0"><fmt:message key="All.products" bundle="${lang}"></fmt:message></a></li>

				<li><a
					href="${pageContext.request.contextPath}/${showProduct}?cid=1"><fmt:message key="Boy's.corner" bundle="${lang}"></fmt:message></a></li>

				<li><a
					href="${pageContext.request.contextPath}/${showProduct}?cid=2"><fmt:message key="Girl's.corner" bundle="${lang}"></fmt:message></a></li>

				<li><a
					href="${pageContext.request.contextPath}/${showProduct}?cid=3"><fmt:message key="Accessory" bundle="${lang}"></fmt:message></a></li>

				<li><a
					href="${pageContext.request.contextPath}/${showProduct}?cid=4"><fmt:message key="Promotion" bundle="${lang}"></fmt:message></a></li>

			</ul>
		</div>
	</div>
	<div class="sk-leftSidebar-widget social-widget">
		<div class="sk-widget-title green-bg-widget">
			<h5>Facebook</h5>
		</div>
		<div class="social-wrap block-content">
			<div id="fb-root"></div>
			<script>
				(function(d, s, id) {
					var js, fjs = d.getElementsByTagName(s)[0];
					if (d.getElementById(id))
						return;
					js = d.createElement(s);
					js.id = id;
					js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7&appId=224942964521968";
					fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));
			</script>
			<div class="fb-page"
				data-href="https://www.facebook.com/Kids-Fashion-104220768150099/"
				data-small-header="false" data-adapt-container-width="true"
				data-hide-cover="false" data-show-facepile="true">
				<blockquote
					cite="https://www.facebook.com/Kids-Fashion-104220768150099/"
					class="fb-xfbml-parse-ignore">
					<a href="https://www.facebook.com/Kids-Fashion-104220768150099/">Cửa
						hàng của bạn</a>
				</blockquote>
			</div>
		</div>
	</div>

	<!-- End .category-menu-widget -->

</aside>