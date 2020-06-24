package user;



import java.sql.Connection;

import java.sql.DriverManager;

import java.sql.PreparedStatement;

import java.sql.ResultSet;



public class UserDAO {

	private Connection conn;

	private PreparedStatement pstmt;

	private ResultSet rs;



	public UserDAO() {

		try {

			String url = "jdbc:mysql://localhost:3306/Middle_Test";

			String user = "root";

			String password = "1111";

			Class.forName("com.mysql.jdbc.Driver");

			conn = DriverManager.getConnection(url, user, password);

		} catch (Exception e) {

			e.printStackTrace(); 

		}

	}


	public int login(String userID, String userPassword) {

		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";

		try {


			pstmt = conn.prepareStatement(SQL);


			pstmt.setString(1, userID);

			rs = pstmt.executeQuery();

			if (rs.next()) {

				if (rs.getString(1).equals(userPassword)) {

					return 1; 

				} else

					return 0; 

			}

			return -1; 



		} catch (Exception e) {

			e.printStackTrace();

		}

		return -2;
	}



}
