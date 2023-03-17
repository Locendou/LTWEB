package dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import context.DBContext;
import entity.Account;

public class AccountDAO {
	public static List<Account> getListAccount() {
		ArrayList<Account> list = new ArrayList<>();
		String query = "select * from Account where isAdmin = 0 ";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Account(rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
						rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
						rs.getString("NumberPhone"), rs.getInt("id_role_member")));
			}
		} catch (Exception e) {
		}
		return list;
	}

	public static Account getAccountById(String uid) {
		String query = "select * from Account where uid = ? ";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, uid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				return new Account(rs.getInt("idCustomer"), rs.getString("userName"), rs.getString("password"),
						rs.getString("Name"), rs.getString("Address"), rs.getString("Email"),
						rs.getString("NumberPhone"), rs.getInt("id_role_member"));
			}
		} catch (Exception e) {
		}
		return null;
	}

	public static void removeAccount(String uid) {
		String query = "DELETE FROM Account WHERE [uid] = ?";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, uid);
			ps.executeUpdate();
		} catch (Exception e) {

		}
	}

//	public static void updateAccount(Customer account) {
//		String pass = EnCode.toSHA1(account.getPass());
//		String query = "update Account set [user] = ?, password =?,email=?,address=?,phoneNumber=? where uid =?;";
//		try {
//			Connection conn = DBContext.getConnection();
//			PreparedStatement ps = conn.prepareStatement(query);
//			ps.setString(1, account.getUser());
//			ps.setString(2, pass);
//			ps.setString(3, account.getEmail());
//			ps.setString(4, account.getPhoneNumber());
//			ps.setString(5, account.getAddress());
//			ps.setInt(6, account.getId());
//			ps.executeUpdate();
//		} catch (Exception e) {
//
//		}
//	}
	public static void main(String[] args) {
		System.out.println(getListAccount());
	}
}
