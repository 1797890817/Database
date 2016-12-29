package com.ddb.db.tran;

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
		String tmp = "insert into cv (name,age,mobile,num) values ";
		st.addBatch(tmp +"('xiaozhao01',26,13600001111,15);" );
		st.addBatch(tmp +"('xiaozhao02',26,13600001111,25);" );
		st.addBatch(tmp +"('xiaozhao03',26,13600001111,35);" );
		st.addBatch(tmp +"('xiaozhao04',26,13600001111,45);" );
		st.addBatch(tmp +"('xiaozhao05',26,13600001111,55);" );
		st.addBatch(tmp +"('xiaozhao05',26,13600001111,55);" );
	 	int ret[] = st.executeBatch();
	 	System.out.println("插入的记录数量：" + ret.length);
		st.close(); 
		conn.close();
		
	}

}
