package controller.client.auth;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Log;
import context.DB;
import context.DBContext;
import dao.client.AuthDAO;
import entity.Customer;
import util.VerifyRecaptchas;

@WebServlet("/Login")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String name = "Login";

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String userName = request.getParameter("email");
		String passWord = request.getParameter("password");
		String pid = request.getParameter("pid");
		String gRecap = request.getParameter("g-recaptcha-response");
		boolean verify = VerifyRecaptchas.verify(gRecap);
		HttpSession session = request.getSession();
		Customer account = AuthDAO.login(userName, passWord);
		String ipAddress = request.getRemoteAddr();
		Log log = new Log(Log.INFO, ipAddress, -1, this.name, "", 0);
		if (account == null) {
			log.setSrc(this.name + " LOGIN FALSE");
			log.setContent("LOGIN FALSE: USER - " + userName);
			log.setLevel(Log.WARNING);
			request.setAttribute("error", "Sai thông tin đăng nhập ");
			request.getServletContext().getRequestDispatcher("/client/Login.jsp").forward(request, response);

		} else {
			if (!verify) {
				request.setAttribute("error", "Sai Capcha ");
				request.getRequestDispatcher("/client/Login.jsp").forward(request, response);
			} else {
				session.setAttribute("acc", account);
				session.setMaxInactiveInterval(1800);
				log.setSrc(this.name + " LOGIN");
				log.setContent("LOGIN SECCESS: USER - " + userName);
				if (pid == null) {
					request.getRequestDispatcher("IndexControl").forward(request, response);
				} else {
					response.sendRedirect("DetailControl?pid=" + pid);
				}

			}

		}
		DB.me().insert(log);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
