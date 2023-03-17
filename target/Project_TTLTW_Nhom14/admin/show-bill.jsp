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
		<!--End Row-->
		<div class="row">
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
										<th scope="col"><fmt:message key="Full.name"
												bundle="${lang}"></fmt:message></th>
										<th scope="col">Email</th>
										<th scope="col"><fmt:message key="Phone.number"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="Address"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="Total.amount"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="purchase.date"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="status"
												bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="act" bundle="${lang}"></fmt:message></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${bill}" var="o">
										<tr>
											<td scope="row">${o.id}</td>
											<td>${o.buyer.user}</td>
											<td>${o.buyer.email}</td>
											<td>${o.buyer.phoneNumber}</td>
											<td>${o.buyer.address}</td>
											<td>${o.priceTotal}VNĐ</td>
											<td>${o.buyDate}</td>
											<td>${o.status}</td>
											<td><c:url var="deleteB" value="BillDeleteController"></c:url><a
												href="${pageContext.request.contextPath}/${deleteB}?id=${o.id}">
													<button class="btn btn-danger">
														<fmt:message key="delete" bundle="${lang}"></fmt:message>
													</button>
											</a> <c:url value="BillManagerController" var="managerB"></c:url>
												<a
												href="${pageContext.request.contextPath}/${ managerB}?manipulation=deny&id=${o.id}">
													<button class="btn btn-warning">
														<fmt:message key="refuse" bundle="${lang}"></fmt:message>
													</button>
											</a> <a
												href="${pageContext.request.contextPath}/${ managerB}?manipulation=subject&id=${o.id}">
													<button class="btn btn-success">
														<fmt:message key="approve" bundle="${lang}"></fmt:message>
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
	</div>
</div>

<jsp:include page="./footer/footer.jsp" flush="true" />