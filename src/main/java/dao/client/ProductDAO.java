package dao.client;

import java.sql.*;
import java.util.*;

import context.DBContext;
import entity.Product;

public class ProductDAO {
	public static int getTotalProduct(int cid) {
		String query = "";
		switch (cid) {
		case 0:
			query = "select count(*) from products";
			break;
		case 1:
			query = "select count(*) from products where idCategorie in(7,2,5,9,13)";
			break;
		case 2:
			query = "select count(*) from products where idCategorie in(4,11,8,3,13)";
			break;
		case 3:
			query = "select count(*) from products where idCategorie in(1,3,5,6,12)";
			break;
		case 4:
			query = "select count(*) from products  where discount>priceProduct";
			break;
		default:
			break;
		}
		try (Connection conn = DBContext.getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery();) {

			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return 0;

	}

	public static List<Product> pagingProduct(int index, int cid, String sort, String type) {
		List<Product> list = new ArrayList<>();
		String query = "";
		switch (cid) {
		case 0:
			query = "select idProduct,nameProduct,priceProduct,idCategorie from products order by " + sort + " " + type
					+ "  limit ?,12";
			break;
		case 1:
			query = "select idProduct,nameProduct,priceProduct,idCategorie from products where idCategorie in(7,2,5,9,13) order by "
					+ sort + " " + type + "  limit ?,12";
			break;
		case 2:
			query = "select idProduct,nameProduct,priceProduct,idCategorie from products where idCategorie in(4,11,8,3,13) order by "
					+ sort + " " + type + "  limit ?,12";
			break;
		case 3:
			query = "select idProduct,nameProduct,priceProduct,idCategorie from products where idCategorie in(1,3,5,6,12,13) order by "
					+ sort + " " + type + "  limit ?,12";
			break;
		case 4:
			query = "select idProduct,nameProduct,priceProduct,idCategorie from products where discount>priceProduct order by "
					+ sort + " " + type + "  limit ?,12";
			break;
		default:
			break;
		}

		try (Connection conn = DBContext.getConnection(); PreparedStatement ps = conn.prepareStatement(query);) {
			ps.setInt(1, (index - 1) * 12);
			try (ResultSet rs = ps.executeQuery()) {
				while (rs.next()) {
					list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
							rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
							rs.getInt("discount"),rs.getDouble("discountPrice")));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void main(String[] args) {

		System.out.println(pagingProduct(1, 0, "idProduct", "asc"));
	}
}
