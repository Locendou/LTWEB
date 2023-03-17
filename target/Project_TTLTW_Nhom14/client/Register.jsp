<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">

<head>

<title><fmt:message key="SIGN.UP.FOR.AN.ACCOUNT"
		bundle="${lang}"></fmt:message></title>
<link rel="icon" type="image" href="../image/HaLoicon.png" />
<script src='https://www.google.com/recaptcha/api.js'></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<jsp:include page="./link/Link.jsp"></jsp:include>
</head>

<body>
	<!-- Load page -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<div class="page">
		<jsp:include page="./header/Header.jsp"></jsp:include>
		<!-- End Header -->
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
		<c:url var="register" value="/Register" />
		<div class="main-content">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="form-style form-login">
							<form accept-charset="utf-8" action="${register}"
								id="customer_register" method="post">
								<input name="FormType" type="hidden" value="customer_register"
									required /> <input name="utf8" type="hidden" value="true"
									required /><input type="hidden"
									id="Token-c9bce25cd2374351a51134277eb7440f" name="Token"
									required />
								<h3 class="form-heading">
									<fmt:message key="SIGN.UP.FOR.AN.ACCOUNT" bundle="${lang}"></fmt:message>
								</h3>
								<p class="form-description">
									<fmt:message key="If.you.have.an.account" bundle="${lang}"></fmt:message>
									<a href="Login.jsp"><strong> <fmt:message
												key="log.in" bundle="${lang}"></fmt:message></strong></a>.
								</p>
								<div class="row">
									<div class="col-md-1">
										<p class="text-right">
											<fmt:message key="user.register" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-11">
										<input id="user" type="text" value="${user}" name="user" />
									</div>

									<div class="row">
										<p style="color: red;" class="col-md-11" id="exituser">${userexit}</p>
									</div>
									
									<div class="row">
										<p style="color: red; display: none;" class="col-md-11"
											id="errorUser"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-1">
										<p class="text-right">
											<fmt:message key="name.register" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-11">
										<input id="name" type="text" value="${name}" name="name" />
									</div>
									<div class="row">
										<p style="color: red; display: none;" class="col-md-11"
											id="errorName"></p>
									</div>
								</div>

								<div class="row">
									<div class="col-md-1">
										<p class="text-right">Email*</p>
									</div>
									<div class="col-md-11">
										<input id="email" type="text" value="${email}" name="email" />
									</div>

									<div class="col-md-11">
										<p style="color: red;" class="col-md-11" id="erroremail">${emailexit}</p>
									</div>

									<div class="row">
										<p style="color: red; display: none;" class="col-md-11"
											id="errorEmail"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-md-1">
										<p class="text-right">
											<fmt:message key="address.register" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-11">
										<input id="address" type="text" value="${address}"
											name="address" />
									</div>
									<div class="row">
										<p style="color: red; display: none;" class="col-md-11"
											id="errorAddress"></p>
									</div>
								</div>

								<div class="row">
									<div class="col-md-1">
										<p class="text-right">
											<fmt:message key="phone.register" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-11">
										<input id="mobile" type="text" value="${phone}"
											name="phoneNumber" required />
									</div>
								</div>
								<div class="row">
									<p style="color: red; display: none;" class="col-md-11"
										id="errorNumberPhone"></p>
								</div>

								<div class="row">
									<div class="col-md-1">
										<p class="text-right">
											<fmt:message key="pass" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-11">
										<input id="pass" type="password" value="" name="password"
											required style="position: relative;"><i
											class="fas fa-eye" id="toggle-password"
											style="position: absolute; width: 20%; height: 33%; float: right; left: 80%; top: 21%;"></i>

									</div>
									<div class="row">
										<p style="color: red;" class="col-md-11" id="errorpass2">${errorpass}</p>
									</div>
									<div class="row">
										<p style="color: red; display: none;" class="col-md-11"
											id="errorPass"></p>
									</div>
									<script type="text/javascript">
										const passwordField = document
												.querySelector("#pass");
										const togglePassword = document
												.querySelector("#toggle-password");

										togglePassword
												.addEventListener(
														"click",
														function() {
															const type = passwordField
																	.getAttribute("type") === "password" ? "text"
																	: "password";
															passwordField
																	.setAttribute(
																			"type",
																			type);
															this.classList
																	.toggle("hide-password");
														});
									</script>
								</div>

								<div class="row">
									<div class="col-md-1">
										<p class="text-right">
											<fmt:message key="repass" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-11">
										<input id="repass" type="password" value="" name="repassword"
											required style="position: relative;"><i
											class="fas fa-eye" id="toggle-repassword"
											style="position: absolute; width: 20%; height: 33%; float: right; left: 80%; top: 21%;"></i>

									</div>
									<div class="row">
										<p style="color: red; display: none;" class="col-md-11"
											id="errorRepass"></p>

									</div>
								</div>
								<script type="text/javascript">
									const repasswordField = document
											.querySelector("#repass");
									const retogglePassword = document
											.querySelector("#toggle-repassword");

									retogglePassword
											.addEventListener(
													"click",
													function() {
														const type = repasswordField
																.getAttribute("type") === "password" ? "text"
																: "password";
														repasswordField
																.setAttribute(
																		"type",
																		type);
														this.classList
																.toggle("hide-password");
													});
								</script>

								<div class="g-recaptcha"
									data-sitekey="6LcEOp4kAAAAAKd6WPwrePNY_OkIHz9GO7hDSmcb"></div>

								<p style="color: red;">${error}</p>
								<div class="row">
									<div class="col-md-1"></div>
									<div class="col-md-11">
										<button class="btn-cart" type="submit">
											<fmt:message key="register" bundle="${lang}"></fmt:message>
										</button>
									</div>
								</div>
							</form>
							<div class="row">
								<p style="color: red;">${errorRe}</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Main Content -->
		<jsp:include page="./footer/Footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#name')
									.blur(
											function() {
												var name = $('#name').val();
												if (name != '') {
													if (name.length < 5) {
														$('#errorName')
																.text(
																		"<fmt:message key="Please.enter.your.full.name" bundle="${lang}"></fmt:message>");
														$('#errorName').css(
																"display",
																"block");
													} else {
														$('#errorName')
																.text("");
														$('#errorName').css(
																"display",
																"none");
													}
												} else {
													$('#errorName')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorName').css(
															"display", "block");
												}
											});
							$('#user')
									.blur(
											function() {
												var name = $('#user').val();
												if (name != '') {
													if (name.length < 5) {
														$('#errorUser')
																.text(
																		"<fmt:message key="Please.enter.your.user" bundle="${lang}"></fmt:message>");
														$('#errorUser').show();
													} else {
														$('#errorUser')
																.text("");
														$('#errorUser').hide();
														$('#exituser').text("");
														$('#exituser').hide();

													}
												} else {

													$('#errorUser')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorUser').show();

													$('#exituser').text("");
													$('#exituser').hide();
												}
											});

							$('#email')
									.blur(
											function() {
												var email = $('#email').val();
												var vnf_regex = /^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
												if (email != '') {
													if (vnf_regex.test(email) == false) {
														$('#errorEmail')
																.text(
																		"<fmt:message key="Please.enter.the.correct.email.format.abc@def.jhi" bundle="${lang}"></fmt:message>");
														$('#errorEmail').css(
																"display",
																"block");
														$('#erroremail').text("");
														$('#erroremail').hide();
													} else {
														$('#errorEmail').text(
																"");
														$('#errorEmail').css(
																"display",
																"none");
														$('#erroremail').text("");
														$('#erroremail').hide();
													}
												} else {
													$('#errorEmail')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorEmail').css(
															"display", "block");

													$('#erroremail').text("");
													$('#erroremail').hide();

												}
											});
							$('#address')
									.blur(
											function() {
												var address = $('#address')
														.val();
												if (address != '') {
													if (address.length < 25) {
														$('#errorAddress')
																.text(
																		"<fmt:message key="Please.enter.the.full.address.house.number,.street.name,.ward,.city,.province" bundle="${lang}"></fmt:message>");
														$('#errorAddress').css(
																"display",
																"block");
													} else {
														$('#errorAddress')
																.text("");
														$('#errorAddress').css(
																"display",
																"none");
													}
												} else {
													$('#errorAddress')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorAddress').css(
															"display", "block");
												}
											});
							$('#mobile')
									.blur(
											function() {
												var mobile = $('#mobile').val();
												var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
												if (mobile != '') {
													if (vnf_regex.test(mobile) == false
															|| mobile.length > 10) {
														$('#errorNumberPhone')
																.text(
																		"<fmt:message key="Please.enter.the.correct.phone.number.format" bundle="${lang}"></fmt:message>");
														$('#errorNumberPhone')
																.css("display",
																		"block");
													} else {
														$('#errorNumberPhone')
																.text("");
														$('#errorNumberPhone')
																.css("display",
																		"none");
													}
												} else {
													$('#errorNumberPhone')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorNumberPhone').css(
															"display", "block");
												}
											});
							$('#pass')
									.blur(

											function() {
												var pass = $('#pass').val();
												var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+[\]{};':"\\|,.<>\/?])[A-Za-z\d!@#$%^&*()_+[\]{};':"\\|,.<>\/?]{8,}$/;
												if (pass != '') {
													if (regex.test(pass) == false
															|| pass.length < 8) {
														$('#errorPass')
																.text(
																		"<fmt:message key="Please.enter.a.password.with.at.least.1.uppercase.and.1.numeric.character" bundle="${lang}"></fmt:message>");
														$('#errorPass').show();

													} else {
														$('#errorPass')
																.text("");
														$('#errorPass').hide();

													}
												} else {
													$('#errorPass')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorPass').show();

													$('#errorpass2').text("");
													$('#errorpass2').hide();
												}
											});
							$('#repass')
									.blur(
											function() {
												var repass = $('#repass').val();
												var pass = $('#pass').val();
												if (repass != '') {
													if (repass != pass) {
														$('#errorRepass')
																.text(
																		"<fmt:message key="Please.enter.the.matching.password" bundle="${lang}"></fmt:message>");
														$('#errorRepass').css(
																"display",
																"block");
													} else {
														$('#errorRepass').text(
																"");
														$('#errorRepass').css(
																"display",
																"none");
													}
												} else {
													$('#errorRepass')
															.text(
																	"<fmt:message key="Please.enter.full.information" bundle="${lang}"></fmt:message>");
													$('#errorRepass').css(
															"display", "block");
												}
											});
						});
	</script>
</body>

</html>