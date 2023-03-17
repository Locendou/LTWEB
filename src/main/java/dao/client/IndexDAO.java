package dao.client;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import org.jdbi.v3.core.Jdbi;

import context.DBContext;
import entity.Product;
import entity.View;

public class IndexDAO {
//	public static List<Product> getSellProduct() {
//		List<Product> list = new ArrayList<>();
//		String query = "SELECT p.idProduct,nameProduct,priceProduct,d.percentage FROM kidstore.products p join kidstore.suppliers s on p.idSupplier = s.idSupplier join kidstore.discount_products dp on p.idProduct=dp.idProduct join kidstore.discounts d on dp.idDiscount = d.idDiscount where d.percentage > 15 and p.isActive ='1' and d.Status = 1 and s.isActive = '1' order by priceProduct asc limit 4 ;";
//		try (Connection conn = DBContext.getConnection();
//				PreparedStatement ps = conn.prepareStatement(query);
//				ResultSet rs = ps.executeQuery();) {
//
//			while (rs.next()) {
//				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"), rs.getDouble("priceProduct"),
//						UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")), rs.getInt("percentage")));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//
//		return list;
//	}
	public static List<Product> getSellProduct() {
		Jdbi me = DBContext.me();
		String query = "SELECT p.idProduct,nameProduct,priceProduct,d.percentage FROM kidstore.products p join kidstore.suppliers s on p.idSupplier = s.idSupplier join kidstore.discount_products dp on p.idProduct=dp.idProduct join kidstore.discounts d on dp.idDiscount = d.idDiscount where d.percentage > 15 and p.isActive ='1' and d.Status = 1 and s.isActive = '1' order by priceProduct asc limit 4 ;";
		return me.withHandle(handle -> handle.createQuery(query)
				.map((rs, ctx) -> new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")))
				.list());
	}

	public static List<Product> getSellProductTwo() {
		Jdbi me = DBContext.me();
		String query = "SELECT p.idProduct,nameProduct,priceProduct,d.percentage FROM kidstore.products p join kidstore.suppliers s on p.idSupplier = s.idSupplier join kidstore.discount_products dp on p.idProduct=dp.idProduct join kidstore.discounts d on dp.idDiscount = d.idDiscount where d.percentage > 15 and p.isActive ='1' and d.Status = 1 and s.isActive = '1' order by priceProduct asc limit 4 ;";
		return me.withHandle(handle -> handle.createQuery(query)
				.map((rs, ctx) -> new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")))
				.list());
	}

	public static List<Product> getOutstandingProduct() {
		Jdbi me = DBContext.me();
		String query = "SELECT p.id,p.nameProduct,pp.listPrice,pp.discount,pp.discountPrice FROM kidstore.products p join kidstore.suppliers s on p.idSupplier = s.id join kidstore.product_prices pp on pp.idProduct = p.id where p.isActive = '1' and s.isActive ='1' limit 3";
		return me.withHandle(handle -> handle.createQuery(query)
				.map((rs, ctx) -> new Product(rs.getInt("id"), rs.getString("nameProduct"),
						rs.getDouble("listPrice"), UtilDAO.findListImageByIdProduct(rs.getInt("id")),
						rs.getInt("discount"),rs.getDouble("discountPrice")))
				.list());

	}

	public static List<Product> getOutstandingProductShoes() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT idProduct,nameProduct,priceProduct,discount\r\n"
				+ "FROM product p join producers s on p.idProducer = s.idProducer \r\n"
				+ "where p.isActice ='1' and s.isActice and p.idCategorie in(1,3,5,6) limit 2 ;";
		try (Connection conn = DBContext.getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery();) {

			while (rs.next()) {
				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")));
			}
		} catch (Exception e) {

		}

		return list;
	}

	public static List<Product> getNewProductBoy() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT idProduct,nameProduct,priceProduct,discount\r\n"
				+ "FROM product p join producers s on p.idProducer = s.idProducer \r\n"
				+ "where p.isActice ='1' and s.isActice and p.idCategorie in(2,7,6,9);";
		try (Connection conn = DBContext.getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery();) {

			while (rs.next()) {
				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")));
			}
		} catch (Exception e) {

		}

		return list;
	}

	public static List<Product> getNewProductGirl() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT idProduct,nameProduct,priceProduct,discount\r\n"
				+ "FROM product p join producers s on p.idProducer = s.idProducer \r\n"
				+ "where p.isActice ='1' and s.isActice and p.idCategorie in(4,8,10,11);";
		try (Connection conn = DBContext.getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery();) {

			while (rs.next()) {
				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")));
			}
		} catch (Exception e) {

		}

		return list;
	}

	public static List<Product> getNewProductAccessory() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT idProduct,nameProduct,priceProduct,discount\r\n"
				+ "FROM product p join producers s on p.idProducer = s.idProducer \r\n"
				+ "where p.isActice ='1' and s.isActice and p.idCategorie in(1,3,5,6,12,13);";
		try (Connection conn = DBContext.getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery();) {

			while (rs.next()) {
				list.add(new Product(rs.getInt("idProduct"), rs.getString("nameProduct"),
						rs.getDouble("priceProduct"), UtilDAO.findListImageByIdProduct(rs.getInt("idProduct")),
						rs.getInt("discount"),rs.getDouble("discountPrice")));
			}
		} catch (Exception e) {

		}

		return list;
	}

	public static List<Product> getSuperSellProduct() {
		List<Product> list = new ArrayList<>();
		String query = "SELECT idProduct,nameProduct,priceProduct,discount\r\n"
				+ "FROM product p join producers s on p.idProducer = s.idProducer \r\n"
				+ "where p.isActice ='1' and s.isActice and (100/p.discount*(p.discount-p.priceProduct)>10);";
		try (Connection conn = DBContext.getConnection();
				PreparedStatement ps = conn.prepareStatement(query);
				ResultSet rs = ps.executeQuery();) {
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
		System.out.println(getOutstandingProduct());
	}
}
