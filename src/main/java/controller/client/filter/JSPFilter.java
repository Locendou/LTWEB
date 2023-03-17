package controller.client.filter;

import java.io.IOException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet Filter implementation class JSPFilter
 */
@WebFilter(filterName = "JSPFilter", urlPatterns = { "/JSPFilter" })
public class JSPFilter implements Filter {
	private  ServletContext context;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;

		String requestURI = httpRequest.getRequestURI();

		if (requestURI.endsWith(".jsp") && !requestURI.endsWith("/Login.jsp")
				&& !requestURI.endsWith("/Introduce.jsp")
				&& !requestURI.endsWith("/Register.jsp")
				&& !requestURI.endsWith("/Contact.jsp")
				&& !requestURI.endsWith("/Service.jsp")) {
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/IndexControl");

			httpRequest.setAttribute("isDispatched", true);
		} else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {

	}

}
