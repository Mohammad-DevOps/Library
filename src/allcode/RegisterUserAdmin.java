package allcode;
import java.sql.*;

public class RegisterUserAdmin {
	static int status = 0;

	public static int register(String username, String password, String repassword, long phone, String adderess,
			String profession) {

		Connection con = DatabaseConnection.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into MEMBERLIST values(?,?,?,?,?,?,?)");
			ps.setLong(1, phone);
			ps.setString(2, username);
			ps.setString(3, password);
			ps.setString(4, repassword);
			ps.setLong(5, phone);
			ps.setString(6, adderess);
			ps.setString(7, profession);

			status = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;

	}
}