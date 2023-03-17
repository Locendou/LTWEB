<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

if (session.getAttribute("acc") != null) {

	response.sendRedirect(request.getContextPath() + "/IndexControl");
}
%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="app" var="lang" />
<!DOCTYPE html>
<html lang="vi">
<script src='https://www.google.com/recaptcha/api.js'></script>

<head>
<title><fmt:message key="log.in.to.your.account"
		bundle="${lang}"></fmt:message></title>
<link rel="icon" type="image" href="../image/HaLoicon.png" />

<jsp:include page="./link/Link.jsp"></jsp:include>
</head>

<body>

	<!-- Load page -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	<c:url var="login" value="/Login" />
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
						</ol>
					</div>
				</div>
			</div>
		</div>
		<!-- End Main Breadcrumb -->
		<!-- Main Content -->
		<div class="main-content">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<div class="form-style form-login">
							<form accept-charset="utf-8" action="SubmitEmail"
								id="VerifyEmailControl" method="post">
								<input name="FormType" type="hidden" value="customer_login"
									required /> <input name="utf8" type="hidden" value="true"
									required />
								<h3 class="form-heading">Xác thực Email</h3>
								<p class="form-description">Vui lòng nhập mã mà chúng tôi đã
									gửi email cho bạn.</p>
								<div class="row">
									<div class="col-md-2">
										<p>
											<fmt:message key="email" bundle="${lang}"></fmt:message>
										</p>
									</div>
									<div class="col-md-10">
										<input type="text" value="${custemp.email}" name="email"
											id="gmailVa" readonly="readonly" />
									</div>
								</div>
								<div class="row">
									<div class="col-md-2">
										<p>Mã xác thực</p>
									</div>

									<div class="col-md-10">
										<input maxlength="8" type="text" value="" name="codeverify" />
									</div>
									<div>
										<button id="send-mail-btn" onclick="sendMail()">Gửi lại mã xác thực</button>
									</div>
									<div id="logInfoEmail"></div>
									<p style="color: red;">${timeUp}</p>
								</div>

								<div class="g-recaptcha"
									data-sitekey="6LcEOp4kAAAAAKd6WPwrePNY_OkIHz9GO7hDSmcb" data></div>

								<div class="row">
									<p style="color: red;">${error}</p>
								</div>
								<div class="row">
									<div class="col-md-10">
										<button class="btn-cart" type="submit">Xác nhận</button>
									</div>
									<div class="col-md-10">
										<a class="btn-cart"
											href="${pageContext.request.contextPath}/client/Register.jsp">Quay
											lại trang đăng ký</a>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- End Main Content -->
		<jsp:include page="./footer/Footer.jsp"></jsp:include>
	</div>
	<script type="text/javascript">
		function sendMail() {
			var emailvalue = document.getElementById("gmailVa").value;
			$.ajax({
				url : "${pageContext.request.contextPath}/VerifyEmailControl",
				type : "get",
				data : {
					email : emailvalue,
				},
				success : function(data) {
					$("#logInfoEmail").html(data);

				},
				error : function(data) {
				}
			});
		}
		var sendMailBtn = document.getElementById("send-mail-btn");
		var totalSeconds;

		window.onload = function() {
			// Bắt đầu đếm ngay khi trang được load
			totalSeconds = 300; // Thời gian tổng cộng là 5 phút 00 giây
			countdown(totalSeconds);
		}

		sendMailBtn.addEventListener("click", function() {
			sendMailBtn.disabled = true;
			totalSeconds = 300; // Thời gian tổng cộng là 5 phút 00 giây
			countdown(totalSeconds);
		});

		function countdown(time) {
			var minutes = Math.floor(time / 60);
			var seconds = time % 60;

			sendMailBtn.innerHTML = "Gửi lại mã xác thực " + minutes + " phút " + seconds
					+ " giây";

			if (time > 0) {
				setTimeout(function() {
					countdown(time - 1);
				}, 1000);
			} else {
				sendMailBtn.innerHTML = "Send Mail";
				sendMailBtn.disabled = false;
			}
		}
	</script>
</body>

</html>