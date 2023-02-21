package controller.client.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.client.AuthDAO;
import entity.Customer;
import util.VerifyRecaptchas;


@WebServlet("/Login")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

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
		if (account == null) {
			System.out.println(verify);
			request.setAttribute("error", "Sai thông tin đăng nhập ");
			request.getServletContext().getRequestDispatcher("/client/Login.jsp").forward(request, response);

		} else {
			if (!verify) {
				request.setAttribute("error", "Sai Capcha ");
				request.getRequestDispatcher("/client/Login.jsp").forward(request, response);
			} else {
				session.setAttribute("acc", account);
				session.setMaxInactiveInterval(1800);
				if (pid == null) {
					request.getRequestDispatcher("IndexControl").forward(request, response);
				} else {
					response.sendRedirect("DetailControl?pid=" + pid);
				}

			}

		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
