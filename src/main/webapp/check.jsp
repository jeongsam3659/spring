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
		String name = request.getParameter("name");
	%>

	����� �̸���  <%= name %> �Դϴ�.<br>
	
	<a href="new001.jsp"></a>

</body>
</html>