<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="${sessionScope.LANG}" />
<fmt:setBundle basename="web.lang.resource.app" var="lang" />
 <%
  response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");
  response.setHeader("Pragma" , "no-cache");
  response.setHeader("Expires" , "0");
  
  
  if (session.getAttribute("admin") == null){
	  response.sendRedirect(request.getContextPath() + "/admin/login.jsp"); 
  }
  %>
  <!-- Start header section -->
  <jsp:include page = "./header/header.jsp" flush = "true" />

    <div class="content-wrapper">
      <div class="container-fluid">

        <div class="row mt-3">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="card-title"><fmt:message key="Edit.User" bundle="${lang}"></fmt:message></div>
                <hr>
                  <c:url value="UserUpdate" var="updateU"></c:url>
                <form action="${pageContext.request.contextPath}/${updateU}" method="post">
                  <div class="form-group">
                    <label for="input-1">ID</label>
                    <input type="text" class="form-control" id="input-1" readonly="readonly" placeholder="ID" value="${account.id}" name="uid">
                  </div>
                  <div class="form-group">
                    <label for="input-1"><fmt:message key="Full.name" bundle="${lang}"></fmt:message></label>
                    <input type="text" class="form-control" id="input-2" placeholder="<fmt:message key="Full.name" bundle="${lang}"></fmt:message>" value="${account.user}" name="user-name">
                  </div>
                  <div class="form-group">
                    <label for="input-3"><fmt:message key="Phone.number" bundle="${lang}"></fmt:message></label>
                    <input type="text" class="form-control" id="input-4" placeholder="<fmt:message key="Phone.number" bundle="${lang}" ></fmt:message>" value="${account.phoneNumber}" name="user-phone">
                  </div>
                  <div class="form-group">
                    <label for="input-2">Email</label>
                    <input type="text" class="form-control" id="input-3" placeholder="Email" value="${account.email}" name="user-email" >
                  </div>
                  <div class="form-group">
                    <label for="input-4"><fmt:message key="pass" bundle="${lang}"></fmt:message></label>
                    <input type="password" class="form-control" id="myinput" placeholder="<fmt:message key="pass" bundle="${lang}"></fmt:message>" value="${account.pass}" name="user-password" >
					<input type="checkbox" onclick="myFunction1()"><fmt:message key="Show.password" bundle="${lang}"></fmt:message>
					<script>function myFunction1() {
                    	  var x = document.getElementById("myinput");
                    	  if (x.type === "password") {
                    	    x.type = "text";
                    	  } else {
                    	    x.type = "password";
                    	  }
                    	}
					</script>                   
                  </div>
                      <div class="form-group">
                    <label for="input-2"><fmt:message key="Address" bundle="${lang}"></fmt:message></label>
                    <input type="text"  class="form-control" id="input-5" placeholder="<fmt:message key="Address" bundle="${lang}"></fmt:message>" value="${account.address}" name="user-address">
                  </div>
                  <div class="form-group">
                      <c:url value="UserListController" var="listU"></c:url>
                    <a href="${pageContext.request.contextPath}/${listU}"><button class="btn btn-danger"><fmt:message key="Cancel" bundle="${lang}"></fmt:message></button></a>
                     <button type="submit" class="btn btn-success"><fmt:message key="update" bundle="${lang}"></fmt:message></button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="overlay toggle-menu"></div>
      </div>
    </div>

    <jsp:include page = "./footer/footer.jsp" flush = "true" />