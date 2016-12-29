package com.ddb.db.conncct;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ConnectDemo3 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/dbase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {
		Class.forName(DBDRIVER);
		Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPWD);
		String sql = "select * from cv limit ?;";
		PreparedStatement preparedStatement = conn.prepareStatement(sql);
		preparedStatement.setInt(1, 5);
	 	ResultSet rs = preparedStatement.executeQuery();
	 	
		while (rs.next()) {
			String  name = rs.getString(2);
			int age = rs.getInt(3);
			System.out.print("name = " + name + "\t");
			System.out.print("age = " + age + "\t");
			System.out.println();
			System.out.println("----------------------------");
		}
		rs.close();
		preparedStatement.close();
		conn.close();
		
	}

}
