<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" /><%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

if (session.getAttribute("acc") == null) {
	response.sendRedirect(request.getContextPath() + "/client/Login.jsp");
}
%>
<!DOCTYPE html>
<html lang="vi">
<head>
<title><fmt:message key="account.information" bundle="${lang}"></fmt:message></title>
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
				<fmt:message key="successfully.added.the.product" bundle="${lang}"></fmt:message>
			</p>
		</div>

		<!-- Main Breadcrumb -->
		<div class="main-breadcrumb">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<ol class="breadcrumb">
							<li><a href="#"> <fmt:message key="Home"
										bundle="${lang}"></fmt:message></a></li>
							<li class="active"><fmt:message key="account"
									bundle="${lang}"></fmt:message></li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- End Main Breadcrumb -->
		<!-- Main Content -->
		<div class="main-content">
			<div class="container">
				<div class="col-sm-3">
					<h3>
						<fmt:message key="account.information" bundle="${lang}"></fmt:message>
					</h3>
					<div class="">
						<c:url var="edit" value="EditControl"></c:url>
						<form action="${pageContext.request.contextPath}/${edit}?editInfo"
							method="post">
							<table class="table table-bordered">
								<tbody>
									<tr>
										<td><fmt:message key="Full.name" bundle="${lang}"></fmt:message>:</td>
										<td class="colum-account"><input class="input-account"
											id="input-account-name" type="text"
											value="${sessionScope.acc.user}" name="name" size="70"
											readonly /></td>
									</tr>

									<tr>
										<td class="colum-account"><fmt:message key="Email"
												bundle="${lang}"></fmt:message>:</td>
										<td><input class="input-account" id="input-account-email"
											type="text" value="${sessionScope.acc.email}" name="email"
											readonly size="70" /></td>
									</tr>

									<tr>
										<td class="colum-account"><fmt:message key="Address"
												bundle="${lang}"></fmt:message>:</td>
										<td><textarea name="address" id="input-account-address"
												rows="9" cols="70" class="textarea-account" readonly> ${sessionScope.acc.address} 
																</textarea></td>
									</tr>

									<tr>
										<td class="colum-account"><fmt:message key="Phone.number"
												bundle="${lang}"></fmt:message>:</td>
										<td><input class="input-account" type="text"
											id="input-account-phoneNumber"
											value="${sessionScope.acc.phoneNumber}" size="70"
											name="phoneNumber" readonly /></td>
									</tr>
								</tbody>
								<div class="row">
									<p style="color: green;">${sucinfo}</p>
								</div>
							</table>
							<ul class="checkout">
								<li>
									<button id="btn-change-info" type="button" class="btn-cart"
										title="Thay đổi thông tin">
										<span><fmt:message key="Change.information"
												bundle="${lang}"></fmt:message></span>
									</button>
								</li>
								<li>
									<button type="button" id="btn-change-pass" class="btn-cart"
										title="Thay đổi Mật khẩu">
										<span><fmt:message key="Change.the.password"
												bundle="${lang}"></fmt:message></span>
									</button>

								</li>
								<li>
									<button type="submit" id="btn-confirm1" style="display: none;"
										class="btn-cart" title="Cập nhật">
										<span><fmt:message key="update" bundle="${lang}"></fmt:message></span>
									</button>
								</li>
							</ul>
						</form>
						<form
							action="${pageContext.request.contextPath}/${edit}?editPassword"
							method="post">
							<table id="table-pass" style="display: none;"
								class="table table-bordered">
								<tbody>
									<tr>
										<td class="colum-account"><fmt:message key="old.password"
												bundle="${lang}"></fmt:message>:</td>
										<td><input class="input-account" type="password" value=""
											name="oldpass" required="required" size="70" /></td>
									</tr>

									<tr>
										<td class="colum-account"><fmt:message key="new.password"
												bundle="${lang}"></fmt:message>:</td>
										<td><input class="input-account" type="password"
											size="70" value="" name="newpass" required="required" /></td>
									</tr>
									<tr>
										<td class="colum-account"><fmt:message
												key="enter.new.password" bundle="${lang}"></fmt:message>:</td>
										<td class="colum-account"><input size="70"
											class="input-account" type="password" value=""
											name="renewpass" required="required" /></td>
									</tr>
									<div class="row">
										<p style="color: red;">${error}</p>
									</div>
									<div class="row">
										<p style="color: green;">${suc}</p>
									</div>
								</tbody>
							</table>
							<button type="submit" id="btn-confirm" style="display: none;"
								class="btn-cart" title="Cập nhật">
								<span><fmt:message key="update" bundle="${lang}"></fmt:message></span>
							</button>
						</form>
					</div>
					<!--inner-->
				</div>
			</div>
		</div>
	</div>
	<!-- End Main Content -->
	<jsp:include page="./footer/Footer.jsp"></jsp:include>
	<script type="text/javascript">
		$("#btn-change-pass").click(function() {
			$("#table-pass").css("display", "table");
			$("#btn-change-pass").css("display", "none");
			$("#btn-confirm").css("display", "block");
		});
		$("#btn-change-info").click(function() {
			$("#btn-confirm1").css("display", "block");
			$("#btn-change-info").css("display", "none");
			$("#input-account-name").attr('readonly', false);
			$("#input-account-address").attr('readonly', false);
			$("#input-account-phoneNumber").attr('readonly', false);
		});
	</script>
</body>
</html>