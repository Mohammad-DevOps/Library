package allcode;

import java.sql.*;

public class RegisterBook {
	static int status = 0;

	public static int register(String isbn, String bookname, String authorname) {

		Connection con = DatabaseConnection.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("Insert into BOOKDETAILS values(?,?,?)");
			long ISBN = Long.parseLong(isbn);
			ps.setLong(1, ISBN);
			ps.setString(2, bookname);
			ps.setString(3, authorname);

			status = ps.executeUpdate();

		} catch (SQLException e) {

			e.printStackTrace();
		}
		return status;

	}
}
