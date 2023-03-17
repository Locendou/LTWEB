package controller.client.show;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

@WebFilter("/*")
public class TranslateFilter  implements Filter {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private  ServletContext context;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		HttpServletRequest rep = (HttpServletRequest) request;
		String lang = request.getParameter("lang");
		if(lang==null) {
			lang = "vi_VN";
		}
		if(lang!=null) {
			rep.getSession().setAttribute("LANG", lang);	
		}
		chain.doFilter(request, response);
	}

	@Override
	public void destroy() {

	}
}
