<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String un = request.getParameter("txtun");
		String pw = request.getParameter("txtpw");
		if(!un.isEmpty()){
			session.setAttribute("un", un);
			response.sendRedirect("formdangnhap-t1.jsp");
		}
	%>
</body>
</html>