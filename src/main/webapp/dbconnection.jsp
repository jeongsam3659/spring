<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");

	//1. ����̹� ����
	Class.forName("com.mysql.jdbc.Driver");
	out.print("1. ����̹� ���� ����");
	
	//3. DB����
	String url ="jdbc:mysql://localhost:3306/spring_one";
	String user = "spr";
	String password = "spr";
	Connection con = DriverManager.getConnection(url, user, password);
	out.print("2. DB���� ����");
	
	
	//3. SQL����
	String sql ="insert into client values(?,?,?)";
	PreparedStatement ptst = con.prepareStatement(sql);
	ptst.setString(1, id);
	ptst.setString(2, pw);
	ptst.setString(3, name);
	out.print("3. sql ���� ����");
	
	
	//4. sql ����
	ptst.executeUpdate();
	out.print("4. ���� ����");
	
%>

</body>
</html>