package allcode;
import java.sql.*;

public class RegisterUser {
	static int status = 0;

	public static int register(String username, String password, String repassword, double phone, String adderess,
			String profession) {
		Connection con = DatabaseConnection.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into MEMBERLIST values(?,?,?,?,?,?,?)");
			ps.setDouble(1, phone);
			ps.setString(2, username);
			ps.setString(3, password);
			ps.setDouble(4, phone);
			ps.setString(5, adderess);
			ps.setString(6, repassword);
			ps.setString(7, profession);

			status = ps.executeUpdate();
			System.out.println(status);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;
		}
	}
