package allcode;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VerifyUserLogin {

	public static boolean checkLogin(String username, String password) {
		boolean status = false;
		Connection con = DatabaseConnection.getCon();
		try {
			PreparedStatement ps = con.prepareStatement("Select * from MEMBERLIST where NAME = ? and PASSWORD = ?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			status = rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}
}