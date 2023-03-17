package dao.client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Product;

public class AccessDAO {
	public static List<Product> searchByName(String txtSearch) {
		List<Product> list = new ArrayList<>();
		String query = "select * from products where nameProduct like ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")));
			}
		} catch (Exception e) {
		}

		return list;
	}

	public static int getTotalProductSearch(String txtSearch) {
		String query = " select count(*) from products where  name like ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {

		}

		return 0;
	}

	public static List<Product> pagingProductSearch(int index, String txtSearch, String sort, String type) {
		List<Product> list = new ArrayList<>();
		String query = "select * from products  where  nameProduct like ? order by " + sort + " " + type
				+ "  limit ?,12";

		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			ps.setInt(2, (index - 1) * 12);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")));
			}
		} catch (Exception e) {

		}
		return list;
	}

	public static void main(String[] args) {
		System.out.println(pagingProductSearch(1,"Giày","idProduct","asc"));
	}
}
