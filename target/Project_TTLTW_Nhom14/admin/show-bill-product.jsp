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
						<h5 class="card-title"><fmt:message key="Order.details" bundle="${lang}"></fmt:message></h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr>
										<th scope="col"><fmt:message key="number" bundle="${lang}"></fmt:message></th>
										<th scope="col">ID</th>
										<th scope="col"><fmt:message key="PRODUCT'S.NAME" bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="TOTAL.PRICE" bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="AMOUNT" bundle="${lang}"></fmt:message></th>
										<th scope="col"><fmt:message key="Note" bundle="${lang}"></fmt:message></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listBills}" var="o" varStatus="stt">
										<tr>
											<td scope="row">${stt.index}</td>
											<td>${o.id}</td>

											<c:forEach items="${products}" var="h">
												<c:if test="${stt.index == h.key}">
													<td scope="row"><c:forEach var="p"
															items="${h.value}">
															<p style="font-weight: 500; color: black" class="">${p.product.name}</p>
														</c:forEach></td>
												</c:if>
											</c:forEach>

											<td>${o.priceTotal}</td>
											<c:forEach items="${products}" var="h">
												<c:if test="${stt.index == h.key}">
													<td scope="row">${h.value.size()}</td>
												</c:if>
											</c:forEach>
											<td>${o.node}</td>
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