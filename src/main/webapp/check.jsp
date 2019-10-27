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

	당신의 이름은  <%= name %> 입니다.<br>
	
	<a href="new001.jsp"></a>

</body>
</html>