package dao.admin;

import java.sql.*;
import java.util.*;

import context.*;
import dao.client.UtilDAO;
import entity.*;

public class ProductAdminDAO {
	public static List<Product> getListProduct() {
		ArrayList<Product> list = new ArrayList<>();
		String query = "select * from Product ";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
//				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"), rs.getDouble("priceProduct"),
//						rs.getDouble("discount"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct"))));
			}
		} catch (Exception e) {
		}
		return list;

	}

	public static void removeProduct(String pid) {
		String query = "DELETE FROM Product WHERE [pid] = ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, pid);
			ps.executeUpdate();
			ps.close();
		} catch (Exception e) {

		}
	}

	public static List<Category> getListCategory() {
		ArrayList<Category> list = new ArrayList<>();
		String query = "select * from Category ";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
		}
		return list;

	}

	public static Product getProductByID(String cid) {

		String query = "select * from product\r\n" + "where pid = ?;";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
//				return new Product(rs.getInt("idProduct"), rs.getString("nameProduct"), rs.getDouble("priceProduct"),
//						rs.getDouble("discount"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;

	}

//	public static void updateProduct(Product product) {
//		String query = "update Product set [name] = ?,image=?,price=?,title=?,[description]=?,cateID=?,oldPrice=?,sumProduct=?,presentProduct=? where pid = ?";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, product.getName());
//			ps.setString(2, product.getImage());
//			ps.setDouble(3, product.getPrice());
//			ps.setString(4, product.getTitle());
//			ps.setString(5, product.getDescription());
//			ps.setInt(6, product.getCateId());
//			ps.setDouble(7, product.getOlePrice());
//			ps.setInt(8, product.getSumProduct());
//			ps.setInt(9, product.getPresentProduct());
//			ps.setInt(10, product.getId());
//			ps.executeUpdate();
//		} catch (Exception e) {
//		}
//	}

//	public static void insertProduct(Product product) {
//		String query = "insert Product values( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, product.getName());
//			ps.setString(2, product.getImage());
//			ps.setDouble(3, product.getPrice());
//			ps.setString(4, product.getTitle());
//			ps.setString(5, product.getDescription());
//			ps.setInt(6, product.getCateId());
//			ps.setDouble(7, product.getOlePrice());
//			ps.setInt(8, product.getSumProduct());
//			ps.setInt(9, product.getPresentProduct());
//			ps.executeUpdate();
//		} catch (Exception e) {
//		}
//	}

	public static void main(String[] args) {
		removeProduct("1");
	}
}
