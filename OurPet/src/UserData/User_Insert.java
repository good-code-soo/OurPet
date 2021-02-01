package UserData;

import java.sql.*;

public class User_Insert {

	String id;
	String pw;
	String email;
	String telnum;
	String name;

	
	
	public User_Insert(String id, String pw, String email, String telnum, String name) {
		this.id = id;
		this.pw = pw;
		this.email = email;
		this.telnum  = telnum;
		this.name = name;
	}
	
	public static void main(String[] args) {
		try {
			Class.forName("org.gjt.mm.mysql.Driver");
			System.out.println("jdbc driver loaded");
		} catch (ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}
		try {
			String url = "jdbc:mysql://127.0.0.1:3306/ourpet";
			Connection con = DriverManager.getConnection(url, "root", "new1234");
			System.out.println("mysql connected");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select name from tb_user where id='admin' limit 1");
			while (rs.next()) {
				String no = rs.getString(1);
				String tblname = rs.getString(1);
				System.out.println("no = " + no);
				System.out.println("tblname= " + tblname);
			}
			rs.close();
			stmt.close();
			con.close();
		} catch (java.lang.Exception ex) {
			ex.printStackTrace();
		}

	}
}
