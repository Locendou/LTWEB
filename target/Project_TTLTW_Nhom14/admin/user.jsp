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
						<h5 class="card-title">
							<fmt:message key="user.management" bundle="${lang}"></fmt:message>
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
										<th scope="col"><fmt:message key="act" bundle="${lang}"></fmt:message></th>

									</tr>
								</thead>
								<tbody>
									<c:forEach items="${accounts}" var="o" varStatus="stt">
										<tr>
											<td scope="row">${stt.index+1}</td>
											<td>${o.user }</td>
											<td>${o.email }</td>
											<td>${o.phoneNumber }</td>
											<td>${o.address }</td>
											<td><c:url value="UserDelete" var="deleteU"></c:url> <a
												href="${pageContext.request.contextPath}/${deleteU}?uid=${o.id}">
													<button class="btn btn-danger">
														<fmt:message key="delete" bundle="${lang}"></fmt:message>
													</button>
											</a> <c:url value="UserUpdate" var="editU"></c:url> <a
												href="${pageContext.request.contextPath}/${editU}?uid=${o.id}">
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