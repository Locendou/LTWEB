package controller.client.show;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.client.IndexDAO;
import entity.Product;

@WebServlet("/IndexControl")
public class IndexControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Boolean isDispatched = (Boolean) request.getAttribute("isDispatched");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		if (isDispatched == null || !isDispatched) {
//			List<Product> list = IndexDAO.getSellProduct();
//			List<Product> listSellProductTwo = IndexDAO.getSellProductTwo();
			List<Product> listOutstandingProduct = IndexDAO.getOutstandingProduct();
//		List<Product> listOutstandingProductShoes = IndexDAO.getOutstandingProductShoes();
//		List<Product> listNewProduct = IndexDAO.getNewProductBoy();
//		List<Product> listNewProductGirl = IndexDAO.getNewProductGirl();
//		List<Product> listNewProductAccessory = IndexDAO.getNewProductAccessory();
//		List<Product> listgetSuperSellProduct = IndexDAO.getSuperSellProduct();
//			request.setAttribute("listSellProduct", list);
//			request.setAttribute("listSellProductTwo", listSellProductTwo);
			request.setAttribute("listOutstandingProduct", listOutstandingProduct);
//		request.setAttribute("listOutstandingProductShoes", listOutstandingProductShoes);
//		request.setAttribute("getNewProductBoy", listNewProduct);
//		request.setAttribute("listNewProductGirl", listNewProductGirl);
//		request.setAttribute("listNewProductAccessory", listNewProductAccessory);
//		request.setAttribute("listgetSuperSellProduct", listgetSuperSellProduct);
			request.getRequestDispatcher("client/Index.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
