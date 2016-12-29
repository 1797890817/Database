package com.ddb.db.st;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class UpdateDemo {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/dbase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {
		Class.forName(DBDRIVER);
		Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPWD);
		Statement st = conn.createStatement();
		String sql = "update cv set name='张三丰', age=120 where id = 17;";
	 	int ret = st.executeUpdate(sql);
	 	System.out.println("更新数据的数量：" + ret);
		st.close(); 
		conn.close();
		
	}

}
