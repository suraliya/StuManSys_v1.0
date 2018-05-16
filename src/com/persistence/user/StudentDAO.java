package com.persistence.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class StudentDAO {
	public Connection connect() throws Exception {
		
		Class.forName("com.mysql.jdbc.Driver");
		return (Connection) DriverManager.getConnection("jdbc:mysql://localhost/smsys_db", "root", "");
	}

	public ResultSet usersList() {
		
		ResultSet rs;
		try {
			String query = "SELECT stu_id, firstname, lastname, dob, nic, gender, contactno, email, address, course FROM student";
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