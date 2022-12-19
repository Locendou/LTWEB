package controller.client.cart;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.client.BillDAO;
import entity.Account;
import entity.Bill;
import entity.BillProduct;

@WebServlet("/AddBillControl")
public class AddToBillControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("cart");// luu tam vao session
		if (obj != null) {// KIEM TRA XEM CO SP TRONG GIO HANG KO?
			Map<String, BillProduct> map = (Map<String, BillProduct>) obj;
			// TAO HOA DON TRUOC, DE LAY DUOC ID BILL
			Bill bill = new Bill();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			bill.setBuyDate(sdf.format(new Date()));
			Account account = (Account) session.getAttribute("acc");
			bill.setBuyer(account);
			bill.setStatus("Chưa duyệt");
			BillDAO.createBill(bill);
			BillDAO.setCurrentIdBill(bill);
			long total = 0;// tinh tong gia
			for (Entry<String, BillProduct> entry : map.entrySet()) {
				BillProduct billProduct = entry.getValue();

				billProduct.setBill(bill);// set bill id vao day
				// luu lai cac mat hang
				BillDAO.createBillProduct(billProduct);
				// tinh tong gia
				total += billProduct.getQuantity() * billProduct.getUnitPrice();
			}
			/// cap nhat lai bill de co tong gia tien
			bill.setPriceTotal(total);
			bill.setNode(request.getParameter("transaction_mess"));
			BillDAO.updateBill(bill);
			session.removeAttribute("cart");
			request.getRequestDispatcher("CartControl").forward(request, response);
		} else {
			request.getRequestDispatcher("CartControl").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
