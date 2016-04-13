package allcode;

import java.sql.*;

public class DatabaseConnection {
	private DatabaseConnection() {
	}

	public static Connection con;

	static {
		try {
			Class.forName(DBStarter.DRIVER);
			con = DriverManager.getConnection(DBStarter.CON_STRING, DBStarter.USERNAME, DBStarter.PASSWORD);
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {

			System.out.println("Exception in GetConnnection");
		}

	}

	public static Connection getCon() {
		return con;
	}
}