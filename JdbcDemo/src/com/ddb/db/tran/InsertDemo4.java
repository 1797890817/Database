package com.ddb.db.tran;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Savepoint;
import java.sql.Statement;

public class InsertDemo4 {
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3306/dbase";
	public static final String DBUSER = "root";
	public static final String DBPWD = "root";

	public static void main(String[] args) throws Exception {
		Class.forName(DBDRIVER);
		Connection conn = DriverManager.getConnection(DBURL, DBUSER, DBPWD);
		Statement st = conn.createStatement();
		conn.setAutoCommit(false);
		Savepoint sp = null;
		Savepoint sp2 = null;
		try {
			String tmp = "insert into cv (name,age,mobile,num) values ";
			st.executeUpdate(tmp + "('xiaozhao11',26,13600001111,15);");
			st.executeUpdate(tmp + "('xiaozhao12',26,13600001111,25);");
			st.executeUpdate(tmp + "('xiaozhao13',26,13600001111,35);");
			// 制造错误
			sp = conn.setSavepoint();
			st.executeUpdate(tmp + "('xiaozhao14‘,26,13600001111,45);");
			sp2 = conn.setSavepoint();
			st.executeUpdate(tmp + "('xiaozhao15',26,13600001111,55);");

			conn.commit();
			System.out.println("插入的记录");
		} catch (Exception e) {
			System.out.println("执行遇到错误，回滚！");
			if (sp2 != null) {
				conn.rollback(sp2);
				conn.commit();
			} else if (sp != null) {
				conn.rollback(sp);
				conn.commit();
			}
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
