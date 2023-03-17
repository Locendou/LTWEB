package controller.client.auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.Account;

@WebServlet("/EditControl")
public class EditControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String query = request.getQueryString();
		HttpSession session = request.getSession();
		Account account = (Account) session.getAttribute("acc");
		if (query != null) {
			if (query.equalsIgnoreCase("editInfo")) {
				String name = request.getParameter("name");
				String address = request.getParameter("address");
				String phoneNumber = request.getParameter("phoneNumber");
//				AuthDAO.editAccountInfo(name, address, phoneNumber, String.valueOf(account.getId()));
//				account.setUser(name);
				account.setAddress(address);
				account.setPhone(phoneNumber);
				session.setAttribute("acc", account);
				request.setAttribute("sucinfo", "Đổi thông tin thành công");
			}
			if (query.equalsIgnoreCase("editPassword")) {
				String oldpass = request.getParameter("oldpass");
				String newpass = request.getParameter("newpass");
				String renewpass = request.getParameter("renewpass");
			
				if (newpass.equals(renewpass)) {
//					Customer editAccount = AuthDAO.checkAccountOldPassword(String.valueOf(account.getId()), oldpass);
//					if(editAccount!=null) {
//						if(account.getEmail().equalsIgnoreCase(editAccount.getEmail())) {
//							AuthDAO.editAccountPassword(String.valueOf(account.getId()), renewpass);
//							request.setAttribute("suc", "Đổi mật khẩu thành công");
						}
					}else {
						request.setAttribute("error", "Mật khẩu củ sai");
					}
				}
			}
//		}
//		request.getRequestDispatcher("/client/Account.jsp").forward(request, response);
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
