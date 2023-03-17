package controller.admin.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.admin.AccountDAO;
import entity.Account;

/**
 * Servlet implementation class UserUpdateController
 */
@WebServlet("/UserUpdate")
public class UserUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserUpdateController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("uid");
		Account account = AccountDAO.getAccountById(user_id);
		request.setAttribute("account", account);
		request.getRequestDispatcher("/admin/edituser.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		String user_id = request.getParameter("uid");
		String user_name = request.getParameter("user-name");
		String user_email = request.getParameter("user-email");
		String user_phone = request.getParameter("user-phone");
		String user_password = request.getParameter("user-password");
		String user_address = request.getParameter("user-address");
//		Customer a = new Customer(Integer.parseInt(user_id), user_name, user_password, 0, user_email,
//				user_phone,user_address);
//		AccountDAO.updateAccount(a);
		HttpSession session = request.getSession();
		String sessionID = ";jsessionid="+session.getId();
		response.sendRedirect(request.getContextPath() + "/UserListController"+sessionID);
	}

}
