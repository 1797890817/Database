package com.ddb.db.st;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class InsertDemo {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/dbase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {
		Class.forName(DBDRIVER);
		Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPWD);
		Statement st = conn.createStatement();
		String sql = "insert into cv (name,age,mobile,num) values('xiaozhao',26,13600001111,5);";
	 	//ResultSet rs = st.executeQuery(sql);
	 	int ret = st.executeUpdate(sql);
	 	System.out.println(ret);
		st.close(); 
		conn.close();
		
	}

}
