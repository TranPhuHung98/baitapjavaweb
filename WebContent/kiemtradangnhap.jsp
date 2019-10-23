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
			String saukhidangnhap =(String) session.getAttribute("saukhidangnhap");
			if(saukhidangnhap.equals("chuyendengiohang"))
				response.sendRedirect("giohangscreen.jsp");
			else response.sendRedirect("homescreen.jsp");
		}
	%>
</body>
</html>