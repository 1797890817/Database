package com.ddb.db.st;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class InsertDemo2 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/dbase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {
		Class.forName(DBDRIVER);
		Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPWD);
		String sql = "insert into cv (name,age,mobile,num) values(?,?,?,?);";
		PreparedStatement prest = conn.prepareStatement(sql);
		prest.setString(1, "name");
		prest.setInt(2, 18);
		prest.setLong(3, 13866665555L);
		prest.setInt(4, 44);
	 	int ret = prest.executeUpdate();
	 	System.out.println(ret);
		prest.close(); 
		conn.close();
		
	}

}
