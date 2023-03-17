package dao.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import context.DBContext;
import entity.Account;
import util.EnCode;

public class LoginAdminDAO {
	public static Account loginAdmin(String email, String pass) {
		pass = EnCode.toSHA1(pass);

		String query = "select * from Account where email = ? and password  = ? and  isAdmin = 1 ";
		try {
			Connection conn = DBContext.getConnection();
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, pass);
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
}
