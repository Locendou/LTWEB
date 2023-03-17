<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/admin/assets" var="url" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="web.lang.resource.app" var="lang" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin Halo's Shop</title>
<link href="${url}/css/pace.min.css" rel="stylesheet" />
<script src="${url}/js/pace.min.js"></script>
<link rel="stylesheet"
	href="${url}/plugins/summernote/dist/summernote-bs4.css" />
<link rel="icon" href="${url}/images/HaLoicon.png" type="image/x-icon">
<link href="${url}/plugins/vectormap/jquery-jvectormap-2.0.2.css"
	rel="stylesheet" />
<link href="${url}/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
<link href="${url}/css/bootstrap.min.css" rel="stylesheet" />
<link href="${url}/css/animate.css" rel="stylesheet" type="text/css" />
<link href="${url}/css/icons.css" rel="stylesheet" type="text/css" />
<link href="${url}/css/sidebar-menu.css" rel="stylesheet" />
<link href="${url}/css/app-style.css" rel="stylesheet" />


</head>

<body class="bg-theme bg-theme2">


	<!-- start loader -->
	<div id="pageloader-overlay" class="visible incoming">
		<div class="loader-wrapper-outer">
			<div class="loader-wrapper-inner">
				<div class="loader"></div>
			</div>
		</div>
	</div>

	<div id="wrapper">
		<jsp:include page="./left-sidebar.jsp" flush="true" />
		<header class="topbar-nav">
			<nav class="navbar navbar-expand fixed-top">
				<ul class="navbar-nav mr-auto align-items-center">
					<li class="nav-item"><a class="nav-link toggle-menu"
						href="javascript:void();"> <i class="icon-menu menu-icon"></i>
					</a></li>
				</ul>

				<ul class="navbar-nav align-items-center right-nav-link">
				<li>
					<c:set var="query" value="${pageContext.request.queryString}"></c:set>
						<c:if test="${param.lang==null}">
					<c:if test="${sessionScope.LANG == 'en_US' }"><a href="?${query}&&lang=vi_VN">Tiếng Việt</a></c:if>	
					<c:if test="${sessionScope.LANG == 'vi_VN' }"><a href="?${query}&&lang=en_US">English</a></c:if>
						</c:if>
						<c:if test="${param.lang!=null}">
							<c:if test="${sessionScope.LANG == 'en_US' }"><a href="?${fn:substring(query, 0, query.length()-12)}&&lang=vi_VN">Tiếng Việt</a></c:if>
							<c:if test="${sessionScope.LANG == 'vi_VN' }"><a href="?${fn:substring(query, 0, query.length()-12)}&&lang=en_US">English</a></c:if>
						</c:if>
					</li>
					<li class="nav-item"><a
						class="nav-link dropdown-toggle dropdown-toggle-nocaret"
						data-toggle="dropdown" href="#"> <span class="user-profile"><img
								src="${pageContext.request.contextPath}/admin/assets/images/avatar-admin.png"
								class="img-circle" alt="user avatar"></span>
					</a>
						<ul class="dropdown-menu dropdown-menu-right">
							<li class="dropdown-item user-details"><a
								href="javaScript:void();">
									<div class="media">
										<div class="avatar">
											<img class="align-self-start mr-3"
												src="${pageContext.request.contextPath}/admin/assets/images/avatar-admin.png"
												alt="user avatar">
										</div>
										<div class="media-body">
											<h6 class="mt-2 user-title">HaLo's Shop</h6>
											<b> Admin: ${sessionScope.admin.user }</b>
										</div>
									</div>
							</a></li>
						
							<li class="dropdown-divider"></li>
							<li class="dropdown-item"><i class="icon-power mr-2"></i><a
								href="${pageContext.request.contextPath}/AdminLogout"><fmt:message key="log.out" bundle="${lang}"></fmt:message></a></li>
						</ul></li>
				</ul>

			</nav>

		</header>
		<div class="clearfix"></div>