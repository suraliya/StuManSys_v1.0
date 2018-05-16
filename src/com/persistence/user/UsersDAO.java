package com.persistence.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class UsersDAO {
	public Connection connect() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/smsys_db", "root", "");
	}

	public ResultSet usersList() {
		
		ResultSet rs;
		try {
			String query = "SELECT firstname, lastname, nic, email, contactno, usertype FROM user";
			Statement stmt = connect().createStatement();
			rs = stmt.executeQuery(query);
		} 
		catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return rs;
	}
}