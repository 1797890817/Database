package com.ddb.db.tran;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class InsertDemo3 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/dbase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {
		Class.forName(DBDRIVER);
		Connection conn = DriverManager.getConnection(DBURL,DBUSER,DBPWD);
		Statement st = conn.createStatement();
		conn.setAutoCommit(false);
		String tmp = "insert into cv (name,age,mobile,num) values ";
		st.addBatch(tmp +"('xiaozhao11',26,13600001111,15);" );
		st.addBatch(tmp +"('xiaozhao12',26,13600001111,25);" );
		st.addBatch(tmp +"('xiaozhao13',26,13600001111,35);" );
		//制造错误
		st.addBatch(tmp +"('xiaozhao14‘,26,13600001111,45);" );
		st.addBatch(tmp +"('xiaozhao15',26,13600001111,55);" );
		
	 	try {
			int ret[] = st.executeBatch();
			conn.commit();
			System.out.println("插入的记录数量：" + ret.length);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("执行遇到错误，回滚！");
			conn.rollback();
			//e.printStackTrace();
		}
	 	
		try {
			st.close();
		} catch (Exception e) {
			st.close();
			e.printStackTrace();
		} 
		try {
			conn.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			conn.close();
			e.printStackTrace();
		}
		
	}

}
