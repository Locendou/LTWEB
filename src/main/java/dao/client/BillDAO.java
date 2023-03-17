package dao.client;//package dao.client;
//
//import java.sql.Connection;
//import java.sql.Date;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.util.ArrayList;
//import java.util.List;
//
//import context.DBContext;
//import entity.Customer;
//import entity.Order;
//import entity.Product;
//
//public class BillDAO {
//	public static void createBill(Order order) {
//		String query = "insert into Bill (uid) values(?);";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setInt(1, order.getCustomer().getIdCustomer());
//			ps.executeUpdate();
//		} catch (Exception e) {
//
//		}
//	}
//
//	public static void setCurrentIdBill(Bill bill) {
//		String query = "SELECT IDENT_CURRENT('Bill') as LastID";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				bill.setId(rs.getInt(1));
//			}
//		} catch (Exception e) {
//
//		}
//
//	}
//
//	public static void createBillProduct(BillDetail billProduct) {
//		String query = "insert into Billproduct (unitPrice,quantity, bid, pid) values(?,?,?,?);";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setDouble(1, billProduct.getUnitPrice());
//			ps.setInt(2, billProduct.getQuantity());
//			ps.setInt(3, billProduct.getBill().getId());
//			ps.setInt(4, billProduct.getProduct().getId());
//			ps.executeUpdate();
//		} catch (Exception e) {
//
//		}
//	}
//
//	public static void updateBill(Bill bill) {
//		String query = "update Bill set priceTotal = ?,buyDate = ?,[status]=?,node=? where bid = ?";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setDouble(1, bill.getPriceTotal());
//			ps.setString(2, bill.getBuyDate());
//			ps.setString(3, bill.getStatus());
//			ps.setString(4, bill.getNode());
//			ps.setInt(5, bill.getId());
//			ps.executeUpdate();
//		} catch (Exception e) {
//
//		}
//	}
//
//	public static List<Bill> getListBill() {
//		List<Bill> list = new ArrayList<>();
//		String query = "select * from Bill order by bid desc";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				list.add(new Bill(rs.getInt(1), AuthDAO.checkAccountExistByid(rs.getString(2)), rs.getString(3),
//						rs.getLong(4), rs.getString(5), rs.getString(6)));
//			}
//		} catch (Exception e) {
//
//		}
//		return list;
//
//	}
//
//	public static List<Bill> getListBillByUid(String uid) {
//		List<Bill> list = new ArrayList<>();
//		String query = "select * from Bill where [uid] = ? order by bid desc";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, uid);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				list.add(new Bill(rs.getInt(1), AuthDAO.checkAccountExistByid(rs.getString(2)), rs.getString(3),
//						rs.getLong(4), rs.getString(5), rs.getString(6)));
//			}
//		} catch (Exception e) {
//
//		}
//		return list;
//
//	}
//
//	public static Bill getBillforBillProduct(String bid) {
//		String query = "select b.* from bill b join Billproduct bp on bp.bid = b.bid where bp.bid = ?";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, bid);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				return new Bill(rs.getInt(1), AuthDAO.checkAccountExistByid(rs.getString(2)), rs.getString(3),
//						rs.getLong(4), rs.getString(5), rs.getString(6));
//			}
//		} catch (Exception e) {
//
//		}
//		return null;
//
//	}
//
//	public static List<Product> getListProductBybid(String bid) {
//		List<Product> list = new ArrayList<>();
//		String query = "select * from product p join Billproduct bp where bid = ? ";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, bid);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5),
//						rs.getString(6), rs.getDouble(8)));
//			}
//		} catch (Exception e) {
//
//		}
//		return list;
//
//	}
//
//	public static Bill getBillByBid(String bid) {
//		String query = "select * from bill where bid = ?";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, bid);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				return new Bill(rs.getInt(1), AuthDAO.checkAccountExistByid(rs.getString(2)), rs.getString(3),
//						rs.getLong(4), rs.getString(5), rs.getString(6));
//			}
//		} catch (Exception e) {
//
//		}
//		return null;
//
//	}
//
//	public static List<BillDetail> getBillProductByBid(String bid) {
//		List<BillDetail> list = new ArrayList<>();
//		String query = "select bpid,unitPrice,quantity,b.bid,pid from Billproduct bp join Bill b" + " where  b.bid = ?";
//		int i = 0;
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, bid);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				list.add(new BillDetail(rs.getInt(1), rs.getDouble(2), rs.getInt(3), BillDAO.getBillforBillProduct(bid),
//						BillDAO.getListProductBybid(bid).get(i)));
//				i++;
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return list;
//
//	}
//
//	public static void main(String[] args) {
//		for (Bill bill : getListBill()) {
//			System.out.println(getBillProductByBid(String.valueOf(bill.getId())));
//		}
//	}
//
//}
