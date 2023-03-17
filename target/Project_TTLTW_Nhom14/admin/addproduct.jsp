<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="web.lang.resource.app" var="lang" />
<%
response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

if (session.getAttribute("admin") == null) {
	response.sendRedirect(request.getContextPath() + "/admin/login.jsp");
}
%>
<!-- Start header section -->
<jsp:include page="./header/header.jsp" flush="true" />

<div class="content-wrapper">
	<div class="container-fluid">
		<div class="row mt-3">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<div class="card-title">
							<fmt:message key="add.product" bundle="${lang}"></fmt:message>
						</div>
						<hr>
						<c:url var="productadd" value="ProductAddController"></c:url>
						<form method="post"
							action="${pageContext.request.contextPath}/${productadd}"
							enctype='multipart/form-data'>


							<div class="form-group">
								<label for="input-1"><fmt:message key="PRODUCT'S.NAME"
										bundle="${lang}"></fmt:message></label> <input type="text" required="required"
									class="form-control" id="input-1"
									placeholder="<fmt:message key="PRODUCT'S.NAME" bundle="${lang}"></fmt:message>"
									name="product-name" value="">
							</div>


							<div class="form-group">
								<label for="input-2"><fmt:message key="CATEGORIES"
										bundle="${lang}"></fmt:message></label>
								<div>
									<select class="form-control valid" id="input-6"
										name="product-cate" aria-invalid="false">
										<c:forEach items="${catelist}" var="cate">
											<option value="${cate.id }" selected="selected">${cate.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group"></div>
							<div class="form-group">
								<label for="input-1"><fmt:message key="PRICE"
										bundle="${lang}"></fmt:message></label> <input type="text"
									class="form-control" id="input-1" required="required"
									placeholder="<fmt:message key="PRICE" bundle="${lang}"></fmt:message>"
									name="product-price" value="">
							</div>
							<div class="form-group">
								<label for="input-2"><fmt:message key="TOTAL.PRODUCTS"
										bundle="${lang}"></fmt:message></label>
								<div>
									<input type="text" class="form-control" id="input-1" required="required"
										placeholder="<fmt:message key="TOTAL.PRODUCTS" bundle="${lang}"></fmt:message>"
										name="sum-Product" value="">
								</div>
							</div>
							<div class="form-group">
								<label for="input-2"><fmt:message
										key="NUMBER.OF.PRODUCTS.AVAILABLE" bundle="${lang}"></fmt:message></label>
								<div>
									<input type="text" class="form-control" id="input-1" required="required"
										placeholder="<fmt:message key="NUMBER.OF.PRODUCTS.AVAILABLE" bundle="${lang}"></fmt:message>"
										name="present-Product" value="">
								</div>
							</div>
							<div class="form-group">
								<label for="input-2"><fmt:message
										key="PRICES.HAVE.NOT.DECREASED" bundle="${lang}"></fmt:message></label>
								<div class="input-group">
									<input type="text" class="form-control" required="required"
										placeholder="<fmt:message key="PRICES.HAVE.NOT.DECREASED" bundle="${lang}"></fmt:message>"
										name="product-oldPrice" value="">
									<div class="input-group-append"></div>
								</div>
							</div>
							<div class="form-group">
								<label for="input-2" class="col-form-label"><fmt:message
										key="DESCRIBE" bundle="${lang}"></fmt:message></label>
								<div>
									<textarea class="form-control" rows="4" id="input-17"
										name="product-desc"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="input-2" class="col-form-label"><fmt:message
										key="TITLE" bundle="${lang}"></fmt:message></label>
								<div>
									<textarea class="form-control" rows="4" id="input-17" required="required"
										name="product-title"></textarea>
								</div>
							</div>

							<div class="form-group">
								<label for="input-1"><fmt:message
										key="PRODUCT.REPRESENTATIVE.PHOTO" bundle="${lang}"></fmt:message></label>
								<input type="file" class="form-control" id="input-1" required="required"
									placeholder="<fmt:message key="figure.names" bundle="${lang}"></fmt:message>"
									name="product-image" value="" accept="image/*">
							</div>


							<div class="form-footer">
								<c:url var="listproductA" value="ProductListController"></c:url>

								<a class="btn btn-danger"
									href="${pageContext.request.contextPath}/${listproductA}"><fmt:message
										key="Cancel" bundle="${lang}"></fmt:message></a>
								<button type="submit" class="btn btn-success">
									<fmt:message key="ADD" bundle="${lang}"></fmt:message>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>
<script>
	var date = new Date();

	var day = date.getDate();
	var month = date.getMonth() + 1;
	var year = date.getFullYear();

	if (month < 10)
		month = "0" + month;
	if (day < 10)
		day = "0" + day;

	var today = year + "-" + month + "-" + day;

	document.getElementById('the-date').value = today;
</script>
<jsp:include page="./footer/footer.jsp" flush="true" />