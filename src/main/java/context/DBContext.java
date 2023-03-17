package context;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.jdbi.v3.core.Jdbi;

import com.zaxxer.hikari.HikariDataSource;

import entity.Product;

public class DBContext {
	private static final String serverName = "localhost";
	private static final String dbName = "kidstore";
	private static final String portNumber = "3306";
	private static final String instance = "";// LEAVE THIS ONE EMPTY IF YOUR SQL IS A SINGLE INSTANCE
	private static final String userID = "root";
	private static final String password = "loc123456789";
	private static HikariDataSource dataSource;
	static Jdbi jdbi;
	
	public static Jdbi me() {
	    if (jdbi == null) {
	        jdbi = Jdbi.create(dataSource);
	    }
	    return jdbi;
	}

	static {

		String url = "jdbc:mysql://" + serverName + ":" + portNumber + "\\" + instance + "/" + dbName;
		if (instance == null || instance.trim().isEmpty())
			url = "jdbc:mysql://" + serverName + ":" + portNumber + "/" + dbName;
		dataSource = new HikariDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setJdbcUrl(url);
		dataSource.setUsername(userID);
		dataSource.setPassword(password);
		dataSource.setMaximumPoolSize(200);
		dataSource.setMinimumIdle(30);
	}

	private DBContext() {
	}

	public static Connection getConnection() throws SQLException {
		return dataSource.getConnection();
	}

	public static void main(String[] args) throws Exception {
		System.out.println(getConnection());
		Jdbi me = DBContext.me();
		List<Product> list = me.withHandle(handle -> {
			return handle.createQuery("select  * from product").mapToBean(Product.class).stream()
					.collect(Collectors.toList());
		});
		System.out.println(list);
	}

}