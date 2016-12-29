<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试JNDI</title>
</head>
<body>
	<%
	//初始化Context
	Context ctx = new InitialContext();
	DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/jndi");
	Connection c = ds.getConnection();
	Statement st = c.createStatement();
	String sql = "select * from cv;";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
		out.println("id:" + rs.getInt(1) + " name:" + rs.getString(2) + " age:" + rs.getInt(3) + "</br>");
		out.println("-  -  -  -  -  -" + "</BR>");
	}
	%>
</body>
</html>