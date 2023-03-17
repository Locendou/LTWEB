package controller.admin.auth;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.admin.LoginAdminDAO;
import entity.Account;

@WebServlet("/AdminLoginController")
public class AdminLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		getServletContext().getRequestDispatcher("/view/admin/login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username = request.getParameter("admin-username");
		String password = request.getParameter("admin-password");
		Account a = LoginAdminDAO.loginAdmin(username, password);
		if(a!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("admin", a);
			String sessionID = ";jsessionid="+session.getId();
			response.sendRedirect(request.getContextPath() + "/IndexAdminController"+sessionID); 
		}
		else {
            request.setAttribute("errorMessage", "Tài khoản đăng nhập hoặc mật khẩu sai !!!");
			RequestDispatcher rd = request.getRequestDispatcher("/admin/login.jsp");
            rd.forward(request, response);     
		}
		
	}

}
