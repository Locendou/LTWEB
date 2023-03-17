package dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;

import context.DBContext;

public class BillAdminDAO {
	
//	public static List<Bill> getListBill() {
//		ArrayList<Bill> list = new ArrayList<>();
//		String query = "select * from Bill ";
//		try {
//			Connection conn =  DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				list.add(new Bill(rs.getInt(1), getAccountByBid(rs.getString(1)), rs.getString(3), rs.getLong(4),
//						rs.getString(5),rs.getString(6)));
//			}
//		} catch (Exception e) {
//		}
//		return list;
//	}

//	public static Customer getAccountByBid(String bid) {
//		String query = "select a.* from Account a join Bill b on a.uid=b.uid where bid = ? ";
//		try {
//			Connection conn =  DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, bid);
//			ResultSet rs = ps.executeQuery();
//			while (rs.next()) {
//				return new Customer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
//						rs.getString(6), rs.getString(7));
//			}
//		} catch (Exception e) {
//		}
//		return null;
//	}

	public static void removeBill(String bid) {
		String query1 = "DELETE FROM BillProduct WHERE [bid] =?";
		String query2 = "DELETE FROM Bill WHERE [bid] = ?";
		try {
			Connection conn =  DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query1);
			ps.setString(1, bid);
			ps.executeUpdate();			
			ps = conn.prepareStatement(query2);
			ps.setString(1, bid);
			ps.executeUpdate();
		} catch (Exception e) {

		}
	}

	public static void updateBill(String status, String bid) {
		String query = "update Bill set [status] = ? where bid =?;";
		try {
			Connection conn =  DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, status);
			ps.setString(2, bid);
			ps.executeUpdate();
		} catch (Exception e) {

		}
	}

	public static void main(String[] args) {
	}

}
