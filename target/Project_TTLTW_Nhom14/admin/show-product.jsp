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
				<c:url value="ProductAddController" var="addP"></c:url>
				<a href="${pageContext.request.contextPath}/${addP}">
					<button class="add-catalog">
						<fmt:message key="Add.products" bundle="${lang}"></fmt:message>
					</button>
				</a>
			</div>
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">
							<fmt:message key="list.of.products" bundle="${lang}"></fmt:message>
						</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col"><fmt:message key="number"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="PRODUCT'S.NAME"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="PICTURE"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="CATEGORY.ID"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="price" bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="status"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="sale" bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="act" bundle="${lang}"></fmt:message></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${productlist}" var="product">
										<tr>
											<th scope="row">${product.id }</th>
											<td>${product.name }</td>
											<td><img
												style="width: 110px; height: 67px; object-fit: cover; border: 1px solid #fff;"
												src="${product.image}" alt="${product.name}"></td>
											<td>${product.cateId}</td>
											<td>${product.price}</td>
											<td><c:choose>
													<c:when
														test="${product.sumProduct > product.presentProduct}">
														<c:out value="${product.presentProduct}" />
													</c:when>
													<c:otherwise>
														<c:out value="Hết hàng" />
													</c:otherwise>
												</c:choose></td>
											<td>${100 / product.getOlePrice() * (product.getOlePrice() - product.getPrice())}%</td>
											<td><c:url var="deletePA"
													value="ProductDeleteController"></c:url> <a
												href="${pageContext.request.contextPath}/${deletePA}?id=${product.id}"><button
														class="btn btn-danger">
														<fmt:message key="delete" bundle="${lang}"></fmt:message>
													</button></a> <c:url var="editPA" value="ProductEditController"></c:url>
												<a
												href="${pageContext.request.contextPath}/${editPA}?id=${product.id}">
													<button class="btn btn-success">
														<fmt:message key="edit" bundle="${lang}"></fmt:message>
													</button>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>


<jsp:include page="./footer/footer.jsp" flush="true" />